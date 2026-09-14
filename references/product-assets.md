# Product Asset Rules

Use this file when a cover mentions a real company, ticker, exchange, broker, product, website, GitHub project, article, or chart. Also read `references/thematic-asset-sourcing.md`; it defines the mandatory web search, provenance, rights, reference-bundle, integration, and QA workflow.

## Core Rule

Do not invent logos, screenshots, charts, prices, product UI, buildings, facilities, people, or documentary-looking scenes when the real source can be found or when accuracy matters. When a real named subject is central to the post, find and use at least one verified topic anchor; a generic industry metaphor alone fails.

Before generating a cover with recognizable products or institutions:

1. Check user-provided assets and screenshots.
2. Search the official website, press/media bank, investor-relations page, current product page, official docs, regulator/exchange page, or official GitHub.
3. Use the local company logo library only as a discovery cache: read `references/company-logo-library.md`, retrieve a candidate, then cross-check it against the official site before treating it as current or official.
4. For factual claims, find a real primary-source chart, screen, document, product image, facility, or other defining asset tied to the entity and date.
5. Open the source page, inspect the asset with vision, classify rights, and record it in the local topic-asset source ledger.
6. Attach the asset with an explicit role: identity anchor, factual proof, environment reference, or literal photo.
7. If no reliable/reusable asset is found, use a text-only chip plus abstract context instead of a fake logo or fake real-world scene.

## Market Data

Charts in generated covers should be abstract unless a real, current, primary-source chart or dataset has been verified for the exact claim.

Allowed:

- abstract candlesticks with no exact labels;
- unlabeled line chart used only as atmosphere;
- blurred market screen that cannot be read as factual evidence;
- generic portfolio card with no precise values;
- literal screenshot from an official exchange, regulator, issuer, or authorised platform, preserved without altered values;
- a verified chart built from primary-source data and clearly identified as such, provided it is inserted as evidence rather than regenerated from memory.

Not allowed without verified primary evidence:

- exact ticker or index price;
- exact return or yield;
- actual-looking broker/exchange screenshot;
- analyst rating or target price;
- synthetic labels, dates, candles, or values presented as real.

If a real chart or screen is used, verify instrument, date range, metric, direction, and source-page provenance. Preserve the evidence pixels literally. An intraday peak must not be labelled as a close.

## Common Sources

- MOEX: use official MOEX pages/assets when exact logo or market screen matters.
- Telegram/YouTube/Podcast platforms: use official marks only if needed, otherwise text-only.
- Public companies: use official investor-relations or brand assets.
- Brokers/exchanges: use official logos, not generated approximations.

## Prompt Wording

When official assets are available:

`Use the attached official logo or screenshot exactly as provided. Preserve aspect ratio. Do not redraw, retype, recolor, stretch, crop, or approximate it.`

When assets are not available:

`Use a clean text-only product chip instead of a logo. Do not invent a fake logo or fake market screenshot.`
