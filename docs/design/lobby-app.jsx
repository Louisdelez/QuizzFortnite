/* lobby-app.jsx — fenêtre de sélection (interactive) */
const { useState, useEffect, useRef } = React;

/* ====================== Décor lobby ====================== */
function Backdrop() {
  return (
    <div className="lb-backdrop">
      <div className="lb-backdrop__floor" />
      <div className="lb-orb" style={{ left: '12%', width: 80, height: 200, background: 'linear-gradient(180deg,#FF3D57,#C81733)' }} />
      <div className="lb-orb" style={{ left: '34%', width: 90, height: 250, background: 'linear-gradient(180deg,#2E9BFF,#125FC4)' }} />
      <div className="lb-orb" style={{ left: '58%', width: 90, height: 230, background: 'linear-gradient(180deg,#23D26A,#0E9B45)' }} />
      <div className="lb-orb" style={{ left: '80%', width: 80, height: 190, background: 'linear-gradient(180deg,#FFC21F,#D9920A)' }} />
      <div className="lb-dim" />
    </div>
  );
}

/* ====================== Sous-page Langue ====================== */
function LanguagePage({ current, onPick, onBack }) {
  return (
    <div className="lb-sub">
      <div className="lb-sub__head">
        <button className="lb-back" onClick={onBack} aria-label="Retour">{QUI.back()}</button>
        <h2>Choisir la langue</h2>
      </div>
      <div className="lb-sub__body">
        <div className="lb-langgrid">
          {LANGUAGES.map((l) => (
            <button key={l.id} className={'lb-langcard' + (current === l.id ? ' is-on' : '')} onClick={() => onPick(l.id)}>
              <Flag code={l.flag} />
              <div className="lb-langcard__txt"><b>{l.name}</b><span>{l.native}</span></div>
              <div className="lb-langcard__chk">{current === l.id && QUI.check(16)}</div>
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}

/* ====================== Sous-page Catégorie ====================== */
function CategoryPage({ current, onPick, onBack }) {
  return (
    <div className="lb-sub">
      <div className="lb-sub__head">
        <button className="lb-back" onClick={onBack} aria-label="Retour">{QUI.back()}</button>
        <h2>Catégories</h2>
      </div>
      <div className="lb-sub__body">
        <div className="lb-catgrid">
          <button className={'lb-catcard' + (current === 'all' ? ' is-on' : '')} style={{ '--cc': '#fff' }} onClick={() => onPick('all')}>
            <div className="lb-catcard__ic" style={{ background: 'linear-gradient(180deg,#7C5CFF,#5B3CE0)' }}>{QUI.grid(20)}</div>
            <div className="lb-catcard__txt"><b>Toutes</b><span>{QUIZZES.length} quizz</span></div>
          </button>
          {CATEGORIES.map((c) => (
            <button key={c.id} className={'lb-catcard' + (current === c.id ? ' is-on' : '')} style={{ '--cc': c.c }} onClick={() => onPick(c.id)}>
              <div className="lb-catcard__ic" style={{ background: `linear-gradient(180deg, ${c.c}, ${c.c}b0)` }}>{c.icon(22)}</div>
              <div className="lb-catcard__txt"><b>{c.name}</b><span>{c.count} quizz</span></div>
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}

/* ====================== Réglages audio ====================== */
const AUDIO_CHANNELS = [
  { id: 'master', name: 'Volume général', sub: 'Tous les sons du jeu', icon: QUI.speaker, color: '#7C5CFF' },
  { id: 'music', name: 'Musique', sub: "Thème et musique d'ambiance", icon: QUI.music, color: '#36E0FF' },
  { id: 'sfx', name: 'Effets sonores (SFX)', sub: 'Bonne/mauvaise réponse, clics', icon: QUI.sfx, color: '#23D26A' },
  { id: 'ambiance', name: 'Ambiance / Foule', sub: 'Réactions du public', icon: QUI.crowd, color: '#FFC21F' },
];

function VolumeBar({ value, color, disabled, onChange }) {
  const ref = useRef(null);
  const setFromX = (clientX) => {
    const r = ref.current.getBoundingClientRect();
    onChange(Math.max(0, Math.min(100, Math.round(((clientX - r.left) / r.width) * 100))));
  };
  const onDown = (e) => {
    if (disabled) return;
    e.preventDefault(); setFromX(e.clientX);
    const move = (ev) => setFromX(ev.clientX);
    const up = () => { window.removeEventListener('mousemove', move); window.removeEventListener('mouseup', up); document.body.style.userSelect = ''; };
    document.body.style.userSelect = 'none';
    window.addEventListener('mousemove', move); window.addEventListener('mouseup', up);
  };
  return (
    <div className={'lb-vol' + (disabled ? ' is-off' : '')} ref={ref} onMouseDown={onDown}>
      <div className="lb-vol__fill" style={{ width: value + '%', background: disabled ? 'rgba(255,255,255,.18)' : `linear-gradient(90deg, ${color}, ${color}cc)` }} />
      <div className="lb-vol__knob" style={{ left: value + '%' }} />
    </div>
  );
}

function SettingsPage({ audio, muted, onVol, onMute, onBack }) {
  return (
    <div className="lb-sub">
      <div className="lb-sub__head">
        <button className="lb-back" onClick={onBack} aria-label="Retour">{QUI.back()}</button>
        <h2>Paramètres audio</h2>
      </div>
      <div className="lb-sub__body">
        <div className="lb-audio">
          {AUDIO_CHANNELS.map((ch) => {
            const isMuted = muted[ch.id];
            const val = isMuted ? 0 : audio[ch.id];
            return (
              <div key={ch.id} className={'lb-arow' + (isMuted ? ' is-muted' : '')}>
                <div className="lb-arow__ic" style={{ background: `linear-gradient(180deg, ${ch.color}, ${ch.color}aa)` }}>{ch.icon(22)}</div>
                <div className="lb-arow__txt">
                  <b>{ch.name}</b>
                  <span>{ch.sub}</span>
                </div>
                <div className="lb-arow__ctrl">
                  <button className={'lb-mute' + (isMuted ? ' on' : '')} onClick={() => onMute(ch.id)} aria-label="Couper le son">
                    {isMuted ? QUI.speakerMute(19) : QUI.speaker(19)}
                  </button>
                  <button className="lb-vstep" onClick={() => onVol(ch.id, Math.max(0, audio[ch.id] - 5))} disabled={isMuted} aria-label="Baisser">{QUI.chevL(16)}</button>
                  <VolumeBar value={val} color={ch.color} disabled={isMuted} onChange={(v) => onVol(ch.id, v)} />
                  <button className="lb-vstep" onClick={() => onVol(ch.id, Math.min(100, audio[ch.id] + 5))} disabled={isMuted} aria-label="Augmenter">{QUI.chevR(16)}</button>
                  <div className="lb-arow__pct">{val}%</div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}

/* ====================== Ligne quizz (liste gauche) ====================== */
function QuizRow({ quiz, queued, onAdd }) {
  const c = CAT[quiz.cat];
  return (
    <button className={'lb-quiz' + (queued ? ' is-queued' : '')} onClick={() => onAdd(quiz)} disabled={queued}>
      <div className="lb-quiz__ic" style={{ background: catGrad(quiz.cat) }}>{c.icon(24)}</div>
      <div className="lb-quiz__txt">
        <b>{quiz.name}</b>
        <div className="lb-quiz__meta">
          <span className="lb-tag" style={{ background: c.c }}>{c.name}</span>
          <span>{quiz.q} questions</span>
        </div>
      </div>
      <div className="lb-quiz__add">{queued ? QUI.check(16) : QUI.plus(18)}</div>
    </button>
  );
}

/* ====================== Slot de file ====================== */
function QueueSlot({ index, item, onRemove }) {
  if (!item) {
    return (
      <div className="lb-slot empty">
        <div className="lb-slot__n">{index + 1}</div>
        <div className="lb-slot__empty">En attente d'un choix…</div>
      </div>
    );
  }
  const c = CAT[item.quiz.cat];
  return (
    <div className="lb-slot filled">
      <div className="lb-slot__n">{index + 1}</div>
      <div className="lb-slot__ic" style={{ background: catGrad(item.quiz.cat) }}>{c.icon(22)}</div>
      <div className="lb-slot__txt">
        <b>{item.quiz.name}</b>
        <span className="lb-slot__player">
          <i className="lb-slot__pdot" style={{ background: item.player.c }}>{item.player.tag[1]}</i>
          Choisi par {item.player.tag} · {item.quiz.q} q.
        </span>
      </div>
      <button className="lb-slot__rm" onClick={() => onRemove(item.uid)} aria-label="Retirer">{QUI.trash(15)}</button>
    </div>
  );
}

/* ====================== Fenêtre principale ====================== */
function LobbyModal() {
  const [lang, setLang] = useState('fr');
  const [category, setCategory] = useState('all');
  const [queue, setQueue] = useState([]);          // {uid, quiz, player}
  const [diff, setDiff] = useState('medium');
  const [ranked, setRanked] = useState(true);
  const [page, setPage] = useState(null);          // null | 'lang' | 'cat' | 'settings'
  const [audio, setAudio] = useState({ master: 80, music: 60, sfx: 75, ambiance: 50 });
  const [muted, setMuted] = useState({ master: false, music: false, sfx: false, ambiance: false });
  const setVol = (id, v) => setAudio((a) => ({ ...a, [id]: v }));
  const toggleMute = (id) => setMuted((m) => ({ ...m, [id]: !m[id] }));
  const [closed, setClosed] = useState(false);
  const [toast, setToast] = useState(false);
  const uidRef = useRef(1);
  const listRef = useRef(null);
  const [atBottom, setAtBottom] = useState(false);
  const [atTop, setAtTop] = useState(true);
  const [metrics, setMetrics] = useState({ st: 0, sh: 1, ch: 1 });
  const trackRef = useRef(null);
  const MAX = 4;

  const updateScroll = () => {
    const el = listRef.current; if (!el) return;
    const st = el.scrollTop, sh = el.scrollHeight, ch = el.clientHeight;
    setAtBottom(st + ch >= sh - 4);
    setAtTop(st <= 4);
    setMetrics({ st, sh, ch });
  };
  const stepSize = () => {
    const el = listRef.current; if (!el) return 70;
    const first = el.querySelector('.lb-quiz');
    return first ? first.offsetHeight + 9 : 70;
  };
  const scrollBy = (dir) => {
    const el = listRef.current; if (!el) return;
    const max = el.scrollHeight - el.clientHeight;
    const target = Math.max(0, Math.min(max, el.scrollTop + dir * stepSize()));
    el.scrollTo({ top: target, behavior: 'smooth' });
    setAtTop(target <= 4);
    setAtBottom(target >= max - 4);
    setMetrics((m) => ({ ...m, st: target }));
  };
  const scrollListDown = () => scrollBy(1);
  const scrollListUp = () => scrollBy(-1);

  // glisser le curseur
  const onThumbDown = (e) => {
    e.preventDefault(); e.stopPropagation();
    const el = listRef.current, track = trackRef.current; if (!el || !track) return;
    const startY = e.clientY, startST = el.scrollTop, trackH = track.clientHeight;
    const move = (ev) => {
      el.scrollTop = startST + ((ev.clientY - startY) / trackH) * el.scrollHeight;
      updateScroll();
    };
    const up = () => { window.removeEventListener('mousemove', move); window.removeEventListener('mouseup', up); document.body.style.userSelect = ''; };
    document.body.style.userSelect = 'none';
    window.addEventListener('mousemove', move); window.addEventListener('mouseup', up);
  };
  // cliquer dans la piste
  const onTrackDown = (e) => {
    const el = listRef.current, track = trackRef.current; if (!el || !track) return;
    const rect = track.getBoundingClientRect();
    const ratio = (e.clientY - rect.top) / rect.height;
    el.scrollTo({ top: ratio * el.scrollHeight - el.clientHeight / 2, behavior: 'smooth' });
    setTimeout(updateScroll, 60);
  };

  useEffect(() => { updateScroll(); }, [category]);

  const filtered = category === 'all' ? QUIZZES : QUIZZES.filter((q) => q.cat === category);
  const queuedIds = new Set(queue.map((i) => i.quiz.id));

  const addQuiz = (quiz) => {
    if (queue.length >= MAX || queuedIds.has(quiz.id)) return;
    const player = LOBBY_PLAYERS[queue.length]; // 1 choix / joueur, dans l'ordre
    setQueue([...queue, { uid: uidRef.current++, quiz, player }]);
  };
  const removeItem = (uid) => setQueue(queue.filter((i) => i.uid !== uid));

  const validate = () => {
    if (!queue.length) return;
    setToast(true); setTimeout(() => setToast(false), 2200);
  };

  if (closed) {
    return (
      <button className="lb-validate" style={{ width: 'auto', padding: '16px 30px' }} onClick={() => setClosed(false)}>
        {QUI.grid(20)} Rouvrir la sélection
      </button>
    );
  }

  const langObj = LANGUAGES.find((l) => l.id === lang);
  const catLabel = category === 'all' ? 'Toutes' : CAT[category].name;

  return (
    <div className="lb-modal">
      {/* En-tête */}
      <div className="lb-head">
        <div className="lb-head__ic">{QUI.rocket(24)}</div>
        <div className="lb-head__txt">
          <h1>Sélection du Quizz</h1>
          <p>Composez la playlist de la partie · jusqu'à {MAX} quizz</p>
        </div>
        <div className="lb-rank">
          <image-slot id="lobby-rank-badge" class="lb-rank__badge" shape="circle" placeholder="PNG"></image-slot>
          <div className="lb-rank__txt"><small>Rang</small><b>Bronze I · 0%</b></div>
        </div>
        <button className="lb-lang-btn" onClick={() => setPage('lang')}>
          <Flag code={langObj.flag} />
          <div><small>Langue</small><b>{langObj.name}</b></div>
          <span className="lb-chev">{QUI.chevR(16)}</span>
        </button>
        <button className="lb-gear" onClick={() => setPage('settings')} aria-label="Paramètres">{QUI.gear(22)}</button>
      </div>

      {/* Corps */}
      <div className="lb-body">
        {/* Colonne gauche : bouton catégorie (haut) + liste quizz */}
        <div className="lb-col">
          <button className="lb-subbtn lb-subbtn--top" onClick={() => setPage('cat')}>
            <div className="lb-subbtn__ic">{QUI.grid(18)}</div>
            <div className="lb-subbtn__txt"><small>Filtrer par</small><b>Catégorie</b></div>
            <span className="lb-subbtn__val">{catLabel}</span>
            {QUI.chevR(16)}
          </button>
          <div className="lb-col__title">{QUI.grid(18)} Tous les quizz <span className="lb-c">{filtered.length} dispo</span></div>
          <div className="lb-listrow">
            <div className="lb-list" ref={listRef} onScroll={updateScroll}>
              {filtered.map((q) => (
                <QuizRow key={q.id} quiz={q} queued={queuedIds.has(q.id)} onAdd={addQuiz} />
              ))}
            </div>
            {(() => {
              const ratio = Math.min(1, metrics.ch / metrics.sh);
              const needScroll = ratio < 0.999;
              const thumbH = Math.max(ratio * 100, 12);
              const topPct = needScroll ? (metrics.st / (metrics.sh - metrics.ch || 1)) * (100 - thumbH) : 0;
              return (
                <div className="lb-scroll">
                  <button className={'lb-scrollcap up' + (atTop ? ' is-disabled' : '')} onClick={scrollListUp} disabled={atTop} aria-label="Monter">{QUI.chevU(15)}</button>
                  <div className="lb-scroll__track" ref={trackRef} onMouseDown={onTrackDown}>
                    {needScroll && <div className="lb-scroll__thumb" style={{ height: thumbH + '%', top: topPct + '%' }} onMouseDown={onThumbDown} />}
                  </div>
                  <button className={'lb-scrollcap down' + (atBottom ? ' is-disabled' : '')} onClick={scrollListDown} disabled={atBottom} aria-label="Descendre">{QUI.chevD(15)}</button>
                </div>
              );
            })()}
          </div>
          <button className={'lb-scrolldown' + (atBottom ? ' is-disabled' : '')} onClick={scrollListDown} disabled={atBottom}>
            {QUI.chevD(20)} <span>Lire plus</span>
          </button>
        </div>

        {/* Colonne droite : file + difficulté + valider */}
        <div className="lb-col">
          <div className="lb-col__title">File de la partie <span className="lb-c">{queue.length}/{MAX}</span></div>
          <div className="lb-queue">
            {Array.from({ length: MAX }).map((_, i) => (
              <QueueSlot key={i} index={i} item={queue[i]} onRemove={removeItem} />
            ))}
          </div>

          {/* Classement */}
          <div className="lb-ranked">
            <button className={'lb-ranked__b' + (ranked ? ' is-on' : '')} onClick={() => setRanked(true)}>
              <span className="lb-ranked__ic">{QUI.trophy(18)}</span> Classé
            </button>
            <button className={'lb-ranked__b' + (!ranked ? ' is-on off' : '')} onClick={() => setRanked(false)}>
              <span className="lb-ranked__ic">{QUI.casual(18)}</span> Non classé
            </button>
          </div>

          {/* Difficulté */}
          <div className="lb-diff">
            {DIFFS.map((d) => (
              <button key={d.id} className={`lb-diff__b ${d.id}` + (diff === d.id ? ' is-on' : '')} onClick={() => setDiff(d.id)}>
                <div className="lb-diff__dots">
                  {[0, 1, 2].map((n) => <i key={n} className={n < d.dots ? 'fill' : ''} />)}
                </div>
                <b>{d.name}</b>
              </button>
            ))}
          </div>

          {/* Valider */}
          <button className="lb-validate" disabled={!queue.length} onClick={validate}>
            {QUI.check(20)} Valider <small>{queue.length ? `· ${queue.length} quizz` : ''}</small>
          </button>
        </div>

        {/* Sous-pages overlay */}
        {page === 'lang' && <LanguagePage current={lang} onPick={(id) => { setLang(id); setPage(null); }} onBack={() => setPage(null)} />}
        {page === 'cat' && <CategoryPage current={category} onPick={(id) => { setCategory(id); setPage(null); }} onBack={() => setPage(null)} />}
        {page === 'settings' && <SettingsPage audio={audio} muted={muted} onVol={setVol} onMute={toggleMute} onBack={() => setPage(null)} />}
      </div>

      <div className={'lb-toast' + (toast ? ' show' : '')}>{QUI.rocket(20)} Partie lancée — {queue.length} quizz · {DIFFS.find((d) => d.id === diff).name}</div>
    </div>
  );
}

function App() {
  const [scale, setScale] = useState(1);
  useEffect(() => {
    const fit = () => {
      const m = 32; // marge
      const s = Math.min((window.innerWidth - m) / 1180, (window.innerHeight - m) / 760, 1);
      setScale(s);
    };
    fit();
    window.addEventListener('resize', fit);
    return () => window.removeEventListener('resize', fit);
  }, []);
  return (
    <div className="lb-stage">
      <Backdrop />
      <div style={{ transform: `scale(${scale})`, transformOrigin: 'center center' }}>
        <LobbyModal />
      </div>
    </div>
  );
}

ReactDOM.createRoot(document.getElementById('root')).render(<App />);
