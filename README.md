# Hoochi Mama pop-up prototype (static)

> **The app this prototype became is now at https://hoochi-popup-app.vercel.app**
> (October 2026). It is in staging: test payments only, no real money. This
> prototype stays up because the printed QR cards still point here; it will
> redirect once the new app takes over.

Served by GitHub Pages from this branch. `index.html` is the whole app
(customer flow, `#counter`, `#artist`).

- `config.js` — add Supabase URL + anon key to sync every device live. Empty = single-device mode.
- `supabase.sql` — run once in the Supabase SQL editor to create the two tables.
- `flash-tiles-v2.jpg` — 165 designs cut from the SEXPO poster, 15×11 sprite.
- `manifest.webmanifest` + icons — Add to Home Screen support.

Payments and texts are simulated in this prototype.
