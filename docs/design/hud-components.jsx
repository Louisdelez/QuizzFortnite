/* components.jsx — composants HUD réutilisables (Quizz UEFN) */

/* ---------- Icônes (SVG simples, trait) ---------- */
const QIcon = {
  controller: (s = 24, c = '#fff') => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M6 11h4M8 9v4M15.5 11h.01M18 13h.01" />
      <path d="M17.5 6h-11A4.5 4.5 0 0 0 2 10.5l-1 6.5A2.2 2.2 0 0 0 5.2 18l1.3-2h11l1.3 2A2.2 2.2 0 0 0 23 17l-1-6.5A4.5 4.5 0 0 0 17.5 6Z" />
    </svg>
  ),
  users: (s = 22, c = '#fff') => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <circle cx="9" cy="8" r="3.2" /><path d="M3 19a6 6 0 0 1 12 0" />
      <path d="M16 5.5a3.2 3.2 0 0 1 0 6M17.5 19a6 6 0 0 0-2.5-4.9" />
    </svg>
  ),
  check: (s = 18, c = '#fff') => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="3.2" strokeLinecap="round" strokeLinejoin="round"><path d="M4 12.5l5 5L20 6.5" /></svg>
  ),
  cross: (s = 16, c = '#fff') => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="3.2" strokeLinecap="round"><path d="M6 6l12 12M18 6L6 18" /></svg>
  ),
  crown: (s = 34, c = '#FFD24A') => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill={c} stroke="rgba(0,0,0,.25)" strokeWidth="1"><path d="M3 7l4 4 5-7 5 7 4-4-2 12H5L3 7Z" /></svg>
  ),
  arrowUp: (s = 12, c = '#23D26A') => (
    <svg width={s} height={s} viewBox="0 0 12 12" fill="none" stroke={c} strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round"><path d="M6 10V3M3 6l3-3 3 3" /></svg>
  ),
};

/* ---------- Données de démo ---------- */
const QPLAYERS = [
  { name: 'NinjaLoot',  score: 4820, c: '#FF3D57' },
  { name: 'PixelFrag',  score: 4510, c: '#2E9BFF' },
  { name: 'ZéroChill',  score: 4205, c: '#23D26A' },
  { name: 'Maelys_GG',  score: 3990, c: '#7C5CFF', me: true },
  { name: 'KapeuhX',    score: 3760, c: '#FFC21F' },
  { name: 'LuneVerte',  score: 3540, c: '#36E0FF' },
  { name: 'MangoTNT',   score: 3310, c: '#FF8A3D' },
  { name: 'Brioche_47', score: 3120, c: '#E84DCB' },
  { name: 'Vortex',     score: 2880, c: '#9CA6FF' },
  { name: "P'titGab",   score: 2610, c: '#5BD6C0' },
];
const initials = (n) => n.replace(/[^A-Za-zÀ-ÿ0-9]/g, '').slice(0, 2).toUpperCase();
const fmt = (n) => n.toLocaleString('fr-FR');

/* ---------- Bandeau question ---------- */
function QuestionBanner({ index = 4, total = 25, question = "En quelle année est sorti Fortnite Battle Royale ?", beam = true }) {
  const pad = (x) => String(x).padStart(2, '0');
  return (
    <div className={'q-panel q-qbanner' + (beam ? ' q-panel--beam' : '')}>
      <div className="q-qbanner__head">
        <div className="q-chip">
          <span className="q-chip__label">Question</span>
          <span className="q-chip__num"><b>{pad(index)}</b> <i>/ {pad(total)}</i></span>
        </div>
      </div>
      <div className="q-qbanner__q">{question}</div>
      <div className="q-progress">
        {Array.from({ length: total }).map((_, i) => (
          <span key={i} className={i + 1 < index ? 'on' : i + 1 === index ? 'cur' : ''} />
        ))}
      </div>
    </div>
  );
}

/* ---------- Bouton réponse A/B/C/D ---------- */
function AnswerButton({ letter = 'A', label = 'Réponse', text = '2015', state = 'default' }) {
  const key = letter.toLowerCase();
  const cls = ['q-ans', key];
  if (state === 'selected') cls.push('is-selected');
  if (state === 'correct') cls.push('is-correct');
  if (state === 'wrong') cls.push('is-wrong');
  if (state === 'dim') cls.push('is-dim');
  return (
    <div className={cls.join(' ')}>
      <div className="q-ans__key"><span>{letter}</span></div>
      <div className="q-ans__txt">
        <small>{label}</small>
        <b>{text}</b>
      </div>
      <div className="q-ans__mark">
        {state === 'correct' && <span className="q-badge-mark ok">{QIcon.check(17)}</span>}
        {state === 'wrong' && <span className="q-badge-mark bad">{QIcon.cross(14)}</span>}
      </div>
    </div>
  );
}

/* ---------- Chronomètre (anneau + chiffre) ---------- */
function Timer({ seconds = 12, total = 20, size = 128 }) {
  const r = 52, C = 2 * Math.PI * r;
  const ratio = Math.max(0, Math.min(1, seconds / total));
  const offset = C * (1 - ratio);
  const tone = seconds <= 3 ? 'urgent' : seconds <= 8 ? 'mid' : 'calm';
  return (
    <div className={'q-timer ' + tone} style={{ width: size, height: size }}>
      <svg viewBox="0 0 120 120">
        <circle className="q-timer__track" cx="60" cy="60" r={r} strokeWidth="9" />
        <circle className="q-timer__bar" cx="60" cy="60" r={r} strokeWidth="9"
          strokeDasharray={C} strokeDashoffset={offset} />
      </svg>
      <div className="q-timer__core">
        <div className="q-timer__num">{seconds}</div>
        <div className="q-timer__unit">SEC</div>
      </div>
    </div>
  );
}

/* ---------- Badge état de partie ---------- */
function StateBadge({ status = 'Partie en cours', round = 4, total = 25 }) {
  return (
    <div className="q-panel q-state">
      <div className="q-state__ic">{QIcon.controller(24)}</div>
      <div className="q-state__txt">
        <small>MODE JEU</small>
        <span><i className="q-live" />{status}</span>
      </div>
      <div className="q-state__round">{round}<i>/{total}</i></div>
    </div>
  );
}

/* ---------- Ligne de classement ---------- */
function QRow({ p, rank }) {
  const cls = ['q-row'];
  if (rank === 1) cls.push('top1');
  else if (rank === 2) cls.push('top2');
  else if (rank === 3) cls.push('top3');
  if (p.me) cls.push('me');
  return (
    <div className={cls.join(' ')}>
      <div className="q-row__rank">{rank}</div>
      <div className="q-av" style={{ background: `linear-gradient(180deg, ${p.c}, ${p.c}99)` }}>{initials(p.name)}</div>
      <div className="q-row__name">{p.name}</div>
      <div className="q-row__score">{fmt(p.score)}<i>PTS</i></div>
    </div>
  );
}

/* ---------- Leaderboard ---------- */
function Leaderboard({ players = QPLAYERS, count = 10, title = 'Classement' }) {
  const rows = players.slice(0, count);
  return (
    <div className="q-panel q-board q-panel--beam">
      <div className="q-board__head">
        {QIcon.users(22, '#36E0FF')}
        <h3>{title}</h3>
        <span className="q-count">{players.length} joueurs</span>
      </div>
      {rows.map((p, i) => <QRow key={p.name} p={p} rank={i + 1} />)}
    </div>
  );
}

Object.assign(window, {
  QIcon, QPLAYERS, initials, fmt,
  QuestionBanner, AnswerButton, Timer, StateBadge, QRow, Leaderboard,
});
