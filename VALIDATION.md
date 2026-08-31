# Validation notes

Validated for publication on 31 August 2026.

## Checks completed

- Repository structure: static GitHub Pages-compatible site with no build step.
- HTML parses successfully and the embedded JavaScript passes `node --check`.
- No obvious API keys, access tokens, passwords, private keys, or other secrets were found.
- External runtime dependencies are limited to Google Fonts; the chart itself is local HTML/CSS/JS.
- Links that open a new tab use `rel="noopener"`.

## Material corrections made

1. **Fractional square rendering** — values smaller than a tier unit, and non-integer multiples of a unit, now render as partial squares rather than being rounded up to a full square. This restores the chart's stated proportionality.
2. **Kenya domestic public debt (Jan 2026)** — corrected from KES 6.50T to KES 6.88954T. External debt is KES 5.50699T and total public and publicly guaranteed debt is KES 12.39653T (National Treasury Public Debt Bulletin, January 2026).
3. **Modern-sector average earnings** — replaced the unsupported KES 50,000/month figure with KES 82,350/month, derived from KNBS Economic Survey 2026 average annual nominal earnings of KES 988.2k in 2025.
4. **Safaricom** — refreshed FY2025 entries to FY2026 audited figures: KES 427.5591B total revenue and KES 95.6086B net income attributable to equity holders.
5. **EABL** — refreshed FY2025 entries to FY2026 full-year figures: KES 146.0B net revenue and KES 18.2B profit after tax.
6. **Nominal GDP** — retained the chart's KES 17.58T presentation but stored the KNBS 2025 value more precisely as KES 17.5776T.

## Remaining caveats

Several household-price, salary-benchmark, rent, personal net-worth, and GDP-per-capita entries are explicitly estimates or market observations rather than audited/official point estimates. They are suitable for an illustrative chart if clearly treated as orientation, but should not be represented as official statistics without adding exact primary-source links.

The design is inspired by xkcd #980 ("Money") and includes attribution in the page and README. The implementation and Kenyan dataset are original to this repository.
