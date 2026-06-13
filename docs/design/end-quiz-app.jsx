/* end-quiz-app.jsx — écran de fin de quizz (résultats) */
const { useState, useEffect } = React;

/* ---------- Icônes ---------- */
const EIcon = {
  trophy: (s = 22, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M7 4h10v5a5 5 0 0 1-10 0V4ZM7 6H4v2a3 3 0 0 0 3 3M17 6h3v2a3 3 0 0 1-3 3M9 18h6M8 21h8M12 14v4" /></svg>),
  crown: (s = 40) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="#FFD24A" stroke="rgba(0,0,0,.25)" strokeWidth="1"><path d="M3 7l4 4 5-7 5 7 4-4-2 12H5L3 7Z" /></svg>),
  check: (s = 18, c = '#23D26A') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="3" strokeLinecap="round" strokeLinejoin="round"><path d="M4 12.5l5 5L20 6.5" /></svg>),
  target: (s = 18, c = '#36E0FF') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><circle cx="12" cy="12" r="9" /><circle cx="12" cy="12" r="5" /><circle cx="12" cy="12" r="1.5" fill={c} /></svg>),
  flame: (s = 18, c = '#FF8A3D') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M12 3c1 3 4 4 4 8a4 4 0 0 1-8 0c0-1 .3-1.8.7-2.5C9 10 10 9 12 3ZM12 21a5 5 0 0 0 5-5c0-2-1-3.5-2-4.5" /></svg>),
  bolt: (s = 18, c = '#FFC21F') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M13 2 4 14h6l-1 8 9-12h-6l1-8Z" /></svg>),
  replay: (s = 22) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round"><path d="M3 12a9 9 0 1 0 3-6.7M3 4v4h4" /></svg>),
  grid: (s = 20) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round"><rect x="3" y="3" width="7" height="7" rx="1.5" /><rect x="14" y="3" width="7" height="7" rx="1.5" /><rect x="3" y="14" width="7" height="7" rx="1.5" /><rect x="14" y="14" width="7" height="7" rx="1.5" /></svg>),
  chevU: (s = 15) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.8" strokeLinecap="round" strokeLinejoin="round"><path d="M5 15l7-7 7 7" /></svg>),
  chevD: (s = 15) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.8" strokeLinecap="round" strokeLinejoin="round"><path d="M5 9l7 7 7-7" /></svg>),
  up: (s = 11, c = '#23D26A') => (<svg width={s} height={s} viewBox="0 0 12 12" fill="none" stroke={c} strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round"><path d="M6 10V3M3 6l3-3 3 3" /></svg>),
};

const initials = (n) => n.replace(/[^A-Za-zÀ-ÿ0-9]/g, '').slice(0, 2).toUpperCase();
const fmt = (n) => n.toLocaleString('fr-FR');

const TOTAL_Q = 25;
/* joueurs + résultats (triés par score) */
const RESULTS = [
  { name: 'NinjaLoot',  score: 4820, good: 24, c: '#FF3D57' },
  { name: 'PixelFrag',  score: 4510, good: 23, c: '#2E9BFF' },
  { name: 'ZéroChill',  score: 4205, good: 21, c: '#23D26A' },
  { name: 'Maelys_GG',  score: 3990, good: 19, c: '#7C5CFF', me: true },
  { name: 'KapeuhX',    score: 3760, good: 19, c: '#FFC21F' },
  { name: 'LuneVerte',  score: 3540, good: 18, c: '#36E0FF' },
  { name: 'MangoTNT',   score: 3310, good: 17, c: '#FF8A3D' },
  { name: 'Brioche_47', score: 3120, good: 16, c: '#E84DCB' },
  { name: 'Vortex',     score: 2880, good: 15, c: '#9CA6FF' },
  { name: "P'titGab",   score: 2610, good: 13, c: '#5BD6C0' },
];

/* ---------- Confettis ---------- */
function Confetti() {
  const colors = ['#FF3D57', '#2E9BFF', '#23D26A', '#FFC21F', '#7C5CFF', '#36E0FF'];
  const seed = [
    [6, 12], [14, 30], [22, 8], [30, 22], [40, 6], [58, 10], [68, 26], [76, 9],
    [84, 20], [92, 12], [10, 50], [88, 54], [4, 70], [95, 74], [18, 64], [80, 68],
  ];
  return (
    <div className="eq-confetti">
      {seed.map(([l, t], i) => (
        <i key={i} style={{ left: l + '%', top: t + '%', background: colors[i % colors.length],
          transform: `rotate(${(i * 37) % 360}deg)` }} />
      ))}
    </div>
  );
}

/* ---------- Podium ---------- */
function Pod({ p, rank, place }) {
  return (
    <div className={'eq-pod p' + place}>
      <div className="eq-pod__top">
        {place === 1 && <div className="eq-pod__crown">{EIcon.crown(40)}</div>}
        <div className="eq-pod__av" style={{ background: `linear-gradient(180deg, ${p.c}, ${p.c}99)` }}>{initials(p.name)}</div>
      </div>
      <div className="eq-pod__name">{p.name}</div>
      <div className="eq-pod__block q-panel">
        <div className="eq-pod__rank">{rank}</div>
        <div className="eq-pod__score">{fmt(p.score)} <i>PTS</i></div>
      </div>
    </div>
  );
}

/* ---------- Stat ---------- */
function Stat({ icon, bg, value, unit, label }) {
  return (
    <div className="eq-stat">
      <div className="eq-stat__ic" style={{ background: bg }}>{icon}</div>
      <div className="eq-stat__v">{value}{unit && <small>{unit}</small>}</div>
      <div className="eq-stat__k">{label}</div>
    </div>
  );
}

function ResultScreen() {
  const [toast, setToast] = useState('');
  const listRef = React.useRef(null);
  const trackRef = React.useRef(null);
  const [atTop, setAtTop] = useState(true);
  const [atBottom, setAtBottom] = useState(false);
  const [metrics, setMetrics] = useState({ st: 0, sh: 1, ch: 1 });
  const me = RESULTS.find((p) => p.me);
  const myRank = RESULTS.indexOf(me) + 1;
  const accuracy = Math.round((me.good / TOTAL_Q) * 100);
  const top3 = RESULTS.slice(0, 3);
  const rest = RESULTS.slice(3);

  const updateScroll = () => {
    const el = listRef.current; if (!el) return;
    const st = el.scrollTop, sh = el.scrollHeight, ch = el.clientHeight;
    setAtTop(st <= 4); setAtBottom(st + ch >= sh - 4); setMetrics({ st, sh, ch });
  };
  const stepSize = () => {
    const el = listRef.current; if (!el) return 60;
    const first = el.querySelector('.eq-row');
    return first ? first.offsetHeight + 6 : 60;
  };
  const scrollByDir = (dir) => {
    const el = listRef.current; if (!el) return;
    const max = el.scrollHeight - el.clientHeight;
    const target = Math.max(0, Math.min(max, el.scrollTop + dir * stepSize()));
    el.scrollTo({ top: target, behavior: 'smooth' });
    setAtTop(target <= 4); setAtBottom(target >= max - 4); setMetrics((m) => ({ ...m, st: target }));
  };
  const onThumbDown = (e) => {
    e.preventDefault(); e.stopPropagation();
    const el = listRef.current, track = trackRef.current; if (!el || !track) return;
    const startY = e.clientY, startST = el.scrollTop, trackH = track.clientHeight;
    const move = (ev) => { el.scrollTop = startST + ((ev.clientY - startY) / trackH) * el.scrollHeight; updateScroll(); };
    const up = () => { window.removeEventListener('mousemove', move); window.removeEventListener('mouseup', up); document.body.style.userSelect = ''; };
    document.body.style.userSelect = 'none';
    window.addEventListener('mousemove', move); window.addEventListener('mouseup', up);
  };
  const onTrackDown = (e) => {
    const el = listRef.current, track = trackRef.current; if (!el || !track) return;
    const rect = track.getBoundingClientRect();
    el.scrollTo({ top: ((e.clientY - rect.top) / rect.height) * el.scrollHeight - el.clientHeight / 2, behavior: 'smooth' });
    setTimeout(updateScroll, 60);
  };
  useEffect(() => { updateScroll(); }, []);

  const fire = (msg) => { setToast(msg); setTimeout(() => setToast(''), 2200); };

  return (
    <div className="eq-card">
      <Confetti />
      {/* En-tête */}
      <div className="eq-head">
        <div className="eq-head__kicker">{EIcon.trophy(18, '#36E0FF')} Quizz terminé</div>
        <h1>Résultats</h1>
        <div className="eq-meta">
          <span className="eq-meta__chip">{EIcon.grid(16)} Fortnite Trivia</span>
          <span className="eq-meta__chip"><i className="eq-dot" style={{ background: 'var(--d)' }} /> <b>Moyen</b></span>
          <span className="eq-meta__chip"><i className="eq-dot" style={{ background: 'var(--gold)' }} /> Classé</span>
          <span className="eq-meta__chip"><b>{TOTAL_Q}</b> questions</span>
        </div>
      </div>

      {/* Corps */}
      <div className="eq-body">
        {/* Gauche : podium + classement */}
        <div className="eq-col">
          <div className="eq-podium">
            <Pod p={top3[1]} rank={2} place={2} />
            <Pod p={top3[0]} rank={1} place={1} />
            <Pod p={top3[2]} rank={3} place={3} />
          </div>
          <div className="eq-board">
            <div className="eq-board__title">{EIcon.trophy(18, '#36E0FF')} Classement complet <span>{RESULTS.length} joueurs</span></div>
            <div className="eq-boardrow">
              <div className="eq-rows" ref={listRef} onScroll={updateScroll}>
                {rest.map((p, i) => (
                  <div key={p.name} className={'eq-row' + (p.me ? ' me' : '')}>
                    <div className="eq-row__rank">{i + 4}</div>
                    <div className="eq-row__av" style={{ background: `linear-gradient(180deg, ${p.c}, ${p.c}99)` }}>{initials(p.name)}</div>
                    <div className="eq-row__name">{p.name}</div>
                    <div className="eq-row__good">{EIcon.check(14)} <b>{p.good}</b>/{TOTAL_Q}</div>
                    <div className="eq-row__score">{fmt(p.score)}<i>PTS</i></div>
                  </div>
                ))}
              </div>
              {(() => {
                const ratio = Math.min(1, metrics.ch / metrics.sh);
                const needScroll = ratio < 0.999;
                const thumbH = Math.max(ratio * 100, 12);
                const topPct = needScroll ? (metrics.st / (metrics.sh - metrics.ch || 1)) * (100 - thumbH) : 0;
                return (
                  <div className="eq-scroll">
                    <button className={'eq-scrollcap up' + (atTop ? ' is-disabled' : '')} onClick={() => scrollByDir(-1)} disabled={atTop} aria-label="Monter">{EIcon.chevU(15)}</button>
                    <div className="eq-scroll__track" ref={trackRef} onMouseDown={onTrackDown}>
                      {needScroll && <div className="eq-scroll__thumb" style={{ height: thumbH + '%', top: topPct + '%' }} onMouseDown={onThumbDown} />}
                    </div>
                    <button className={'eq-scrollcap down' + (atBottom ? ' is-disabled' : '')} onClick={() => scrollByDir(1)} disabled={atBottom} aria-label="Descendre">{EIcon.chevD(15)}</button>
                  </div>
                );
              })()}
            </div>
          </div>
        </div>

        {/* Droite : performance perso */}
        <div className="eq-col">
          <div className="eq-you">
            <div className="eq-rank q-panel q-panel--beam">
              <image-slot id="rank-badge" class="eq-rank__badge" style={{ width: '84px', height: '84px' }} shape="rounded" radius="10" placeholder="PNG rang"></image-slot>
              <div className="eq-rank__info">
                <small>Rang compétitif</small>
                <div className="eq-rank__name">Diamant III</div>
                <div className="eq-rank__bar"><i style={{ width: '64%' }} /></div>
                <div className="eq-rank__pct">
                  <span><b>64%</b> → Diamant IV</span>
                  <span className="eq-rank__gain">{EIcon.up(11)} +10%</span>
                </div>
              </div>
            </div>

            <div className="eq-score q-panel">
              <div className="eq-score__big">{fmt(me.score)}</div>
              <div className="eq-score__u">points<br />gagnés</div>
            </div>

            <div className="eq-stats">
              <Stat icon={EIcon.trophy(17, '#FFD24A')} bg="linear-gradient(180deg,#FFD24A,#C99A14)" value={'#' + myRank} unit={'/' + RESULTS.length} label="Classement" />
              <Stat icon={EIcon.check(17)} bg="linear-gradient(180deg,#23D26A,#0E9B45)" value={me.good} unit={'/' + TOTAL_Q} label="Bonnes rép." />
              <Stat icon={EIcon.target(17)} bg="linear-gradient(180deg,#36E0FF,#1C8FCB)" value={accuracy} unit="%" label="Précision" />
              <Stat icon={EIcon.flame(17)} bg="linear-gradient(180deg,#FF8A3D,#D9590A)" value="7" label="Meilleure série" />
            </div>
          </div>
        </div>
      </div>

      {/* Actions */}
      <div className="eq-actions">
        <button className="eq-btn ghost" onClick={() => fire('Relance du quizz…')}>{EIcon.replay(22)} Rejouer</button>
        <button className="eq-btn primary" onClick={() => { fire('Retour à la sélection des quizz…'); setTimeout(() => { window.location.href = 'Lobby - Selection Quizz.html'; }, 900); }}>{EIcon.grid(20)} Retour à la sélection</button>
      </div>

      <div className={'eq-toast' + (toast ? ' show' : '')}>{EIcon.trophy(18)} {toast}</div>
    </div>
  );
}

function App() {
  const [scale, setScale] = useState(1);
  useEffect(() => {
    const fit = () => setScale(Math.min((window.innerWidth - 32) / 1180, (window.innerHeight - 28) / 828, 1));
    fit(); window.addEventListener('resize', fit); return () => window.removeEventListener('resize', fit);
  }, []);
  return (
    <div className="eq-stage">
      <div className="eq-bg"><div className="eq-bg__rays" /><div className="eq-bg__glow" /></div>
      <div style={{ transform: `scale(${scale})`, transformOrigin: 'center center' }}>
        <ResultScreen />
      </div>
    </div>
  );
}

ReactDOM.createRoot(document.getElementById('root')).render(<App />);
