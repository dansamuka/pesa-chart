# The Pesa Chart

A Kenyan re-scaling of xkcd #980 ("Money") — five log-scale tiers of real, sourced KES
figures, from a boda-boda fare to the national debt. Each square on the chart represents
a fixed unit (KES 1, then 1,000, then 1M, then 1B, then 1T), so the size of every block is
literally proportional to the shilling amount it represents.

Live reference for the original: https://xkcd.com/980/

## What's in this repo

- `index.html` — the whole chart. Single self-contained file (HTML/CSS/JS, Google Fonts
  loaded from CDN), no build step, no dependencies to install.
- `push.cmd` — a one-click Windows script that initializes the repo (if needed), commits
  everything, and pushes to a GitHub remote you provide.

## Viewing it

Just open `index.html` in a browser. No server required.

## Publishing it (GitHub Pages)

1. Create an empty repo on GitHub (don't initialize it with a README).
2. Double-click `push.cmd` in this folder and follow the prompts — it will ask for your
   repo URL the first time, then commit and push everything.
3. On GitHub, go to **Settings → Pages**, set the source to the `main` branch, root
   folder, and save. Your chart will be live at
   `https://<your-username>.github.io/<repo-name>/` within a minute or two.

## Updating the data later

All the figures live in the `T` array near the bottom of `index.html`, grouped by tier
(`groups-1` through `groups-5`). Each entry is `{ label, value, source }` — edit the
`value` and re-run `push.cmd` to publish the update.

## Sources

See the footer of the chart itself for source notes (National Treasury, KNBS,
company results, etc.) and the exchange-rate / estimate caveats. `VALIDATION.md` records
the publication checks and material corrections made before release.
