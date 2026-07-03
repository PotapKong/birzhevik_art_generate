# Product Asset Rules

Use this file when a cover mentions a real company, ticker, exchange, broker, product, website, GitHub project, article, or chart.

## Core Rule

Do not invent logos, screenshots, charts, prices, or product UI when the real source can be found or when accuracy matters.

Before generating a cover with recognizable products:

1. Check user-provided assets and screenshots.
2. Use the local company logo library when a logo is needed: read `references/company-logo-library.md` and run `scripts/find-company-logo.ps1 <brand> [default|mono]`.
3. Search official website, exchange page, company investor-relations page, official docs, or official GitHub when relevant.
4. If no reliable asset is found, use a text-only chip instead of a fake logo.

## Market Data

Charts in generated covers should be abstract unless the user provides real data.

Allowed:

- abstract candlesticks;
- unlabeled line chart;
- blurred market screen;
- generic portfolio card with no precise values.

Not allowed unless provided:

- exact ticker price;
- exact return;
- actual broker/exchange screenshot;
- analyst rating;
- target price.

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
