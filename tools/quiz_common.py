# ============================================================
#  quiz_common.py — pipeline partage des quizz "image Wikipedia -> nom"
#  - fetch_wiki(title) : vignette de l'article Wikipedia EN (REST API)
#  - save_canvas(bytes, dst) : normalise en 246x164, cadre sombre
#  - build_images(items, out, prefix) : telechargement parallele
#  - emit_bank(...) : genere la banque Verse (blocs de 205, tirages
#    deterministes, distracteurs du MEME palier, noms uniques,
#    appels hisses hors des for — pas d'erreur 3512, pas d'UDIM)
# ============================================================
import io, os, random, urllib.request, urllib.parse
from concurrent.futures import ThreadPoolExecutor
from PIL import Image

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 240, 158
BORDER = (26, 26, 42)
UA = {"User-Agent": "QuizzFortnite/1.0 (UEFN quiz; contact loicdelez.ch@gmail.com)"}

def _get(url, tries=4):
    import time
    for k in range(tries):
        try:
            return urllib.request.urlopen(urllib.request.Request(url, headers=UA), timeout=60).read()
        except urllib.error.HTTPError as e:
            if e.code == 429 and k < tries - 1:
                time.sleep(8 * (k + 1))   # backoff rate-limit Wikimedia
                continue
            raise

def fetch_wiki(title, lang="en"):
    import json
    url = f"https://{lang}.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(title)}"
    data = json.loads(_get(url))
    # vignette REST (~320px) telle quelle : suffisante pour l'affichage 240x158,
    # et les URLs retaillees a la main sont refusees (HTTP 400).
    src = (data.get("thumbnail") or {}).get("source") or (data.get("originalimage") or {}).get("source")
    if not src:
        raise RuntimeError(f"pas d'image pour {title}")
    return _get(src)

def has_wiki_image(title, lang="en"):
    import json
    url = f"https://{lang}.wikipedia.org/api/rest_v1/page/summary/{urllib.parse.quote(title)}"
    try:
        data = json.loads(_get(url))
        return bool((data.get("thumbnail") or {}).get("source") or (data.get("originalimage") or {}).get("source"))
    except Exception:
        return False

def filter_with_images(items, key="wiki"):
    """Garde seulement les items dont la page Wikipedia a une image (evite les 3506).
    Renumérotation contiguë assuree par l'appelant (l'ordre est preserve)."""
    keep = []
    for it in items:
        if has_wiki_image(it[key]):
            keep.append(it)
        else:
            print(f"  (sans image, retire) {it[key]}")
    return keep

def save_canvas(raw, dst):
    img = Image.open(io.BytesIO(raw))
    if img.mode in ("RGBA", "LA", "P"):
        # transparence (logos...) : aplatit sur BLANC, sinon noir sur fond sombre = invisible
        img = img.convert("RGBA")
        white = Image.new("RGBA", img.size, (255, 255, 255, 255))
        img = Image.alpha_composite(white, img)
    img = img.convert("RGB")
    s = min(INNER_W / img.width, INNER_H / img.height)
    nw, nh = max(1, round(img.width * s)), max(1, round(img.height * s))
    img = img.resize((nw, nh), Image.LANCZOS)
    canvas = Image.new("RGB", (CANVAS_W, CANVAS_H), BORDER)
    canvas.paste(img, ((CANVAS_W - nw) // 2, (CANVAS_H - nh) // 2))
    canvas.save(dst, optimize=True)

def build_images(items, out, prefix, key="wiki", lang="en"):
    """items: liste de dicts avec [key]=titre wikipedia. Nommage prefix_%04d (1-base)."""
    os.makedirs(out, exist_ok=True)
    def one(args):
        i, it = args
        dst = f"{out}/{prefix}_{i+1:04d}.png"
        if os.path.exists(dst): return None
        try:
            save_canvas(fetch_wiki(it[key], lang), dst)
            return None
        except Exception as e:
            return f"#{i+1} {it[key]}: {type(e).__name__} {e}"
    errs = []
    with ThreadPoolExecutor(max_workers=3) as ex:   # doux avec le rate-limit Wikimedia
        for k, r in enumerate(ex.map(one, enumerate(items)), 1):
            if r: errs.append(r)
            if k % 50 == 0: print(f"  {k}/{len(items)}...")
    return errs

LANGS = ("FR", "EN", "ES", "DE", "IT")
CHUNK = 205

def emit_custom(dst, comment, diff_name, fn_base, rows_by_lang, diffs, img_refs=None):
    """rows_by_lang[lang] = [(enonce, [4 reponses], correct_idx), ...]
    img_refs : liste optionnelle de refs assets (ou None par item)."""
    parts = []
    for lang in LANGS:
        rows = rows_by_lang[lang]
        nch = (len(rows) + CHUNK - 1) // CHUNK
        chunks = []
        for c in range(nch):
            out = []
            name = "Make%sQuestions%s" % (fn_base, lang) if nch == 1 else "Make%sQuestions%s%d" % (fn_base, lang, c+1)
            out.append("%s() : []question =" % name)
            out.append("    array:")
            for k, (en, answers, correct) in enumerate(rows[c*CHUNK:(c+1)*CHUNK]):
                out.append("        question:")
                out.append('            Enonce := "%s"' % en)
                if img_refs and img_refs[c*CHUNK + k]:
                    out.append("            Image := option{ %s }" % img_refs[c*CHUNK + k])
                out.append("            Reponses := array{%s}" % ", ".join('"%s"' % a for a in answers))
                out.append("            BonneReponse := %d" % correct)
            chunks.append("\n".join(out))
        parts.extend(chunks)
        if nch > 1:
            parts.append("Make%sQuestions%s() : []question =\n    %s" % (fn_base, lang,
                " + ".join("Make%sQuestions%s%d()" % (fn_base, lang, c+1) for c in range(nch))))
    parts.append("Make%sQuestions() : []question =\n    Make%sQuestionsFR()" % (fn_base, fn_base))
    header = ("using { /Verse.org/Assets }\n\n# %s\n# GENERE — NE PAS EDITER A LA MAIN.\n\n"
              "%s : []int = array{%s}\n" % (comment, diff_name, ", ".join(str(t) for t in diffs)))
    with open(dst, "w", encoding="utf-8", newline="\n") as f:
        f.write(header + "\n" + "\n\n".join(parts) + "\n")
    print("OK : %s (%d questions)" % (dst, len(diffs)))

def make_draws(items, seed_prefix, name_key="FR"):
    """tirages communs : 3 distracteurs du meme palier a noms distincts + position."""
    import random as _r
    n = len(items)
    draws = []
    for i, it in enumerate(items):
        rng = _r.Random("%s-%s" % (seed_prefix, it["id"]))
        seen = {it["names"][name_key]}
        pool = []
        for j in rng.sample(range(n), n):
            if j == i or items[j]["tier"] != it["tier"] or items[j]["names"][name_key] in seen: continue
            seen.add(items[j]["names"][name_key]); pool.append(j)
            if len(pool) == 3: break
        if len(pool) < 3:
            for j in rng.sample(range(n), n):
                if j == i or items[j]["names"][name_key] in seen: continue
                seen.add(items[j]["names"][name_key]); pool.append(j)
                if len(pool) == 3: break
        answers = [i] + pool
        correct = rng.randrange(4)
        answers[0], answers[correct] = answers[correct], answers[0]
        draws.append((answers, answers.index(i)))
    return draws

def _bank_lines(fn_name, enonce, rows):
    out = ["%s() : []question =" % fn_name, "    array:"]
    for img_ref, answers, correct in rows:
        out.append("        question:")
        out.append('            Enonce := "%s"' % enonce)
        if img_ref:
            out.append("            Image := option{ %s }" % img_ref)
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % a for a in answers))
        out.append("            BonneReponse := %d" % correct)
    return "\n".join(out)

def emit_bank(dst, comment, diff_name, fn_base, enonces, items, shared, seed_prefix,
              img_ref_of=None):
    """items: dicts {id, tier, names: {lang: str} (ou {"*": str} si shared)}.
    img_ref_of(i) -> ref asset Verse ou None. shared=True -> banque FR + wrappers."""
    n = len(items)
    def name_of(i, lang):
        nm = items[i]["names"]
        return nm.get(lang) or nm["*"]
    # tirages communs a toutes les langues (seed par item, pool du meme palier,
    # noms FR distincts pour eviter deux reponses identiques)
    draws = []
    for i, it in enumerate(items):
        rng = random.Random("%s-%s" % (seed_prefix, it["id"]))
        t = it["tier"]
        seen = {name_of(i, "FR")}
        pool = []
        for j in rng.sample(range(n), n):
            if j == i or items[j]["tier"] != t: continue
            nm = name_of(j, "FR")
            if nm in seen: continue
            seen.add(nm); pool.append(j)
            if len(pool) == 3: break
        if len(pool) < 3:
            for j in rng.sample(range(n), n):
                nm = name_of(j, "FR")
                if j == i or nm in seen: continue
                seen.add(nm); pool.append(j)
                if len(pool) == 3: break
        answers = [i] + pool
        correct = rng.randrange(4)
        answers[0], answers[correct] = answers[correct], answers[0]
        draws.append((answers, answers.index(i)))
    def rows(lang):
        return [((img_ref_of(i) if img_ref_of else None),
                 [name_of(a, lang) for a in draws[i][0]], draws[i][1])
                for i in range(n)]
    parts = []
    langs = ("FR",) if shared else LANGS
    for lang in langs:
        rws = rows(lang)
        nch = (n + CHUNK - 1) // CHUNK
        if nch == 1:
            parts.append(_bank_lines("Make%sQuestions%s" % (fn_base, lang), enonces[lang], rws))
        else:
            for c in range(nch):
                parts.append(_bank_lines("Make%sQuestions%s%d" % (fn_base, lang, c+1),
                                         enonces[lang], rws[c*CHUNK:(c+1)*CHUNK]))
            parts.append("Make%sQuestions%s() : []question =\n    %s" % (fn_base, lang,
                " + ".join("Make%sQuestions%s%d()" % (fn_base, lang, c+1) for c in range(nch))))
    parts.append("Make%sQuestions() : []question =\n    Make%sQuestionsFR()" % (fn_base, fn_base))
    if shared:
        for lang in ("EN", "ES", "DE", "IT"):
            parts.append("Make%sQuestions%s() : []question =\n"
                         "    Base := Make%sQuestionsFR()\n"
                         "    for (Q : Base):\n"
                         '        question{ Enonce := "%s", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }'
                         % (fn_base, lang, fn_base, enonces[lang]))
    diffs = ", ".join(str(it["tier"]) for it in items)
    header = ("using { /Verse.org/Assets }\n\n# %s\n# GENERE — NE PAS EDITER A LA MAIN.\n\n"
              "%s : []int = array{%s}\n" % (comment, diff_name, diffs))
    with open(dst, "w", encoding="utf-8", newline="\n") as f:
        f.write(header + "\n" + "\n\n".join(parts) + "\n")
    print("OK : %s (%d questions, %d lignes)" % (dst, n, sum(1 for _ in open(dst, encoding="utf-8"))))
