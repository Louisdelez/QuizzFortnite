/* lobby-data.jsx — données + icônes pour la fenêtre de sélection */

/* ---------- Icônes catégories (SVG trait/plein) ---------- */
const CatIcon = {
  geo: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <circle cx="12" cy="12" r="9" /><path d="M3 12h18M12 3c2.5 2.6 2.5 15.4 0 18M12 3c-2.5 2.6-2.5 15.4 0 18" />
    </svg>
  ),
  history: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M5 4h11l3 3v13H5zM16 4v3h3" /><path d="M8 9h7M8 13h7M8 17h4" />
    </svg>
  ),
  gaming: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M6 11h4M8 9v4M16 10h.01M18.5 12.5h.01" />
      <path d="M17.5 6h-11A4.5 4.5 0 0 0 2 10.5l-1 6.5A2.2 2.2 0 0 0 5.2 18l1.3-2h11l1.3 2A2.2 2.2 0 0 0 23 17l-1-6.5A4.5 4.5 0 0 0 17.5 6Z" />
    </svg>
  ),
  cinema: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <rect x="3" y="4" width="18" height="16" rx="2" /><path d="M7 4v16M17 4v16M3 9h4M3 15h4M17 9h4M17 15h4" />
    </svg>
  ),
  music: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M9 18V5l11-2v13" /><circle cx="6" cy="18" r="3" /><circle cx="17" cy="16" r="3" />
    </svg>
  ),
  sport: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <circle cx="12" cy="12" r="9" /><path d="M12 3l3 4-1.2 5H10.2L9 7zM3.5 9.5l4 1.6M20.5 9.5l-4 1.6M7 19l1.5-4M17 19l-1.5-4" />
    </svg>
  ),
  science: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <circle cx="12" cy="12" r="2" /><ellipse cx="12" cy="12" rx="10" ry="4.2" />
      <ellipse cx="12" cy="12" rx="10" ry="4.2" transform="rotate(60 12 12)" /><ellipse cx="12" cy="12" rx="10" ry="4.2" transform="rotate(120 12 12)" />
    </svg>
  ),
  culture: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M12 3a7 7 0 0 0-4 12.7V18h8v-2.3A7 7 0 0 0 12 3ZM9 21h6M10 18v3M14 18v3" />
    </svg>
  ),
  nature: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M11 20C6 20 4 16 4 12 4 7 8 4 13 4c3 0 7 1 7 1s-1 13-9 15Z" /><path d="M7 17c4-5 7-6 10-7" />
    </svg>
  ),
  logos: (s = 24) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M3 11l8-8 9 1 1 9-8 8z" /><circle cx="15.5" cy="8.5" r="1.6" />
    </svg>
  ),
};

const QUI = { // helper misc icons
  globe: (s = 22) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <circle cx="12" cy="12" r="9" /><path d="M3 12h18M12 3c2.5 2.6 2.5 15.4 0 18M12 3c-2.5 2.6-2.5 15.4 0 18" />
    </svg>
  ),
  grid: (s = 20) => (
    <svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
      <rect x="3" y="3" width="7" height="7" rx="1.5" /><rect x="14" y="3" width="7" height="7" rx="1.5" />
      <rect x="3" y="14" width="7" height="7" rx="1.5" /><rect x="14" y="14" width="7" height="7" rx="1.5" />
    </svg>
  ),
  plus: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="3" strokeLinecap="round"><path d="M12 5v14M5 12h14" /></svg>),
  x: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="3" strokeLinecap="round"><path d="M6 6l12 12M18 6L6 18" /></svg>),
  chevR: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.6" strokeLinecap="round" strokeLinejoin="round"><path d="M9 5l7 7-7 7" /></svg>),
  chevL: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.6" strokeLinecap="round" strokeLinejoin="round"><path d="M15 5l-7 7 7 7" /></svg>),
  chevD: (s = 20) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.8" strokeLinecap="round" strokeLinejoin="round"><path d="M5 9l7 7 7-7" /></svg>),
  chevU: (s = 20) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.8" strokeLinecap="round" strokeLinejoin="round"><path d="M5 15l7-7 7 7" /></svg>),
  back: (s = 22) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.6" strokeLinecap="round" strokeLinejoin="round"><path d="M15 5l-7 7 7 7" /></svg>),
  check: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="3.2" strokeLinecap="round" strokeLinejoin="round"><path d="M4 12.5l5 5L20 6.5" /></svg>),
  trash: (s = 16) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round"><path d="M4 7h16M9 7V4h6v3M6 7l1 13h10l1-13" /></svg>),
  rocket: (s = 22) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M12 3c3 1 5 4 5 8l-2 4H9l-2-4c0-4 2-7 5-8ZM9 15l-2 5 4-2M15 15l2 5-4-2M12 9h.01" /></svg>),
  trophy: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M7 4h10v5a5 5 0 0 1-10 0V4ZM7 6H4v2a3 3 0 0 0 3 3M17 6h3v2a3 3 0 0 1-3 3M9 18h6M8 21h8M12 14v4" /></svg>),
  casual: (s = 18) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><circle cx="12" cy="12" r="9" /><path d="M8.5 14.5a4 4 0 0 0 7 0M9 9h.01M15 9h.01" /></svg>),
  gear: (s = 22) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><circle cx="12" cy="12" r="3.2" /><path d="M19.4 13.6a1.6 1.6 0 0 0 .32 1.77l.06.06a2 2 0 1 1-2.83 2.83l-.06-.06a1.6 1.6 0 0 0-1.77-.32 1.6 1.6 0 0 0-1 1.47V21a2 2 0 1 1-4 0v-.1a1.6 1.6 0 0 0-1-1.47 1.6 1.6 0 0 0-1.77.32l-.06.06a2 2 0 1 1-2.83-2.83l.06-.06a1.6 1.6 0 0 0 .32-1.77 1.6 1.6 0 0 0-1.47-1H3a2 2 0 1 1 0-4h.1a1.6 1.6 0 0 0 1.47-1 1.6 1.6 0 0 0-.32-1.77l-.06-.06A2 2 0 1 1 7.02 4.6l.06.06a1.6 1.6 0 0 0 1.77.32H9a1.6 1.6 0 0 0 1-1.47V3a2 2 0 1 1 4 0v.1a1.6 1.6 0 0 0 1 1.47 1.6 1.6 0 0 0 1.77-.32l.06-.06a2 2 0 1 1 2.83 2.83l-.06.06a1.6 1.6 0 0 0-.32 1.77V9a1.6 1.6 0 0 0 1.47 1H21a2 2 0 1 1 0 4h-.1a1.6 1.6 0 0 0-1.47 1Z" /></svg>),
  speaker: (s = 20, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M4 9v6h4l5 4V5L8 9H4Z" /><path d="M16 9a3.5 3.5 0 0 1 0 6M18.5 6.5a7 7 0 0 1 0 11" /></svg>),
  speakerMute: (s = 20, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M4 9v6h4l5 4V5L8 9H4Z" /><path d="M22 9l-6 6M16 9l6 6" /></svg>),
  music: (s = 20, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M9 18V5l11-2v13" /><circle cx="6" cy="18" r="3" /><circle cx="17" cy="16" r="3" /></svg>),
  sfx: (s = 20, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><path d="M2 12h3l2-6 4 14 3-9 2 4h6" /></svg>),
  crowd: (s = 20, c = '#fff') => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke={c} strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><circle cx="8" cy="8" r="2.6" /><circle cx="16" cy="8" r="2.6" /><path d="M3 19a5 5 0 0 1 10 0M11 19a5 5 0 0 1 10 0" /></svg>),
  rankTarget: (s = 24) => (<svg width={s} height={s} viewBox="0 0 24 24" fill="none" stroke="#FFC21F" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"><circle cx="12" cy="12" r="9" /><circle cx="12" cy="12" r="5" /><circle cx="12" cy="12" r="1.6" fill="#FFC21F" /></svg>),
};

/* drapeaux (CSS via composant) */
function Flag({ code }) {
  if (code === 'fr') return (
    <div className="lb-flag" style={{ display: 'flex' }}>
      <div style={{ flex: 1, background: '#1E3A8C' }} /><div style={{ flex: 1, background: '#fff' }} /><div style={{ flex: 1, background: '#E0162B' }} />
    </div>
  );
  // en / drapeau UK simplifié
  return (
    <div className="lb-flag" style={{ position: 'relative', background: '#1E3A8C' }}>
      <div style={{ position: 'absolute', inset: 0, background: 'linear-gradient(45deg, transparent 44%, #fff 44%, #fff 56%, transparent 56%), linear-gradient(-45deg, transparent 44%, #fff 44%, #fff 56%, transparent 56%)' }} />
      <div style={{ position: 'absolute', left: '40%', right: '40%', top: 0, bottom: 0, background: '#fff' }} />
      <div style={{ position: 'absolute', left: 0, right: 0, top: '36%', bottom: '36%', background: '#fff' }} />
      <div style={{ position: 'absolute', left: '44%', right: '44%', top: 0, bottom: 0, background: '#E0162B' }} />
      <div style={{ position: 'absolute', left: 0, right: 0, top: '42%', bottom: '42%', background: '#E0162B' }} />
    </div>
  );
}

/* ---------- Catégories ---------- */
const CATEGORIES = [
  { id: 'geo', name: 'Géographie', c: '#2E9BFF', icon: CatIcon.geo, count: 2 },
  { id: 'history', name: 'Histoire', c: '#FFC21F', icon: CatIcon.history, count: 1 },
  { id: 'gaming', name: 'Gaming', c: '#7C5CFF', icon: CatIcon.gaming, count: 2 },
  { id: 'cinema', name: 'Cinéma', c: '#FF3D57', icon: CatIcon.cinema, count: 2 },
  { id: 'music', name: 'Musique', c: '#E84DCB', icon: CatIcon.music, count: 1 },
  { id: 'sport', name: 'Sport', c: '#23D26A', icon: CatIcon.sport, count: 1 },
  { id: 'science', name: 'Sciences', c: '#36E0FF', icon: CatIcon.science, count: 1 },
  { id: 'culture', name: 'Culture G', c: '#FF8A3D', icon: CatIcon.culture, count: 1 },
  { id: 'nature', name: 'Nature', c: '#5BD6C0', icon: CatIcon.nature, count: 1 },
  { id: 'logos', name: 'Logos & Marques', c: '#9CA6FF', icon: CatIcon.logos, count: 1 },
];
const CAT = Object.fromEntries(CATEGORIES.map((c) => [c.id, c]));

/* ---------- Quizz ---------- */
const QUIZZES = [
  { id: 'q1', name: 'Capitales du monde', cat: 'geo', q: 25 },
  { id: 'q2', name: 'Drapeaux du monde', cat: 'geo', q: 20 },
  { id: 'q3', name: 'Histoire de France', cat: 'history', q: 30 },
  { id: 'q4', name: 'Fortnite Trivia', cat: 'gaming', q: 25 },
  { id: 'q5', name: 'Univers Mario', cat: 'gaming', q: 20 },
  { id: 'q6', name: 'Films Marvel', cat: 'cinema', q: 25 },
  { id: 'q7', name: 'Répliques cultes', cat: 'cinema', q: 15 },
  { id: 'q8', name: 'Tubes des années 2010', cat: 'music', q: 20 },
  { id: 'q9', name: 'Légendes du foot', cat: 'sport', q: 25 },
  { id: 'q10', name: 'Le corps humain', cat: 'science', q: 20 },
  { id: 'q11', name: 'Culture générale XXL', cat: 'culture', q: 40 },
  { id: 'q12', name: 'Animaux du monde', cat: 'nature', q: 20 },
  { id: 'q13', name: 'Logos de marques', cat: 'logos', q: 30 },
];

/* ---------- Langues ---------- */
const LANGUAGES = [
  { id: 'fr', name: 'Français', native: 'Français', flag: 'fr' },
  { id: 'en', name: 'Anglais', native: 'English', flag: 'en' },
];

/* ---------- Difficultés ---------- */
const DIFFS = [
  { id: 'easy', name: 'Facile', dots: 1 },
  { id: 'medium', name: 'Moyen', dots: 2 },
  { id: 'hard', name: 'Difficile', dots: 3 },
];

/* ---------- Joueurs (qui ajoute au queue) ---------- */
const LOBBY_PLAYERS = [
  { id: 'p1', tag: 'P1', c: '#FF3D57' },
  { id: 'p2', tag: 'P2', c: '#2E9BFF' },
  { id: 'p3', tag: 'P3', c: '#23D26A' },
  { id: 'p4', tag: 'P4', c: '#FFC21F' },
];

const catGrad = (id) => { const c = CAT[id].c; return `linear-gradient(180deg, ${c}, ${c}b0)`; };

Object.assign(window, {
  CatIcon, QUI, Flag, CATEGORIES, CAT, QUIZZES, LANGUAGES, DIFFS, LOBBY_PLAYERS, catGrad,
});
