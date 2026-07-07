# Anti-patterns

Use this file before refinement or when exact brand, text, market, or logo fidelity matters.

## Code-Generated Artwork

Avoid:

- building the main cover with PIL, Python, HTML, CSS, SVG, Canvas, or scripted layout;
- replacing GPT Image 2 with a flat template because text placement feels easier;
- drawing fake 3D tokens, chart scenes, or brand backgrounds by code;
- using code output as the final artwork when the user asked to generate a branded image.

Allowed only after GPT Image 2 creates the main scene:

- overlay exact official logo assets;
- correct or sharpen short Russian text;
- crop/outpaint/resize;
- insert user-provided screenshots or verified assets.

## Investment Hype

Avoid:

- guaranteed profit claims;
- `100%`, `иксы`, `ракета`, `срочно покупай`;
- casino visuals;
- coin piles and cash rain;
- fake urgency.

## Fake Market Data

Do not invent:

- exact prices;
- tickers;
- returns;
- chart labels;
- analyst ratings;
- broker/exchange screenshots.

Use abstract chart textures unless the user supplies real data or screenshot evidence.

## Logo Fidelity

Do not present a generated approximation as the official Birzhevik logo. Never ask GPT Image 2 to redraw, retype, stylize, or approximate the official Birzhevik logo from memory.

Use real references from `assets/brand/` or `references/images/` when a logo appears in the final image. The prompt must tell GPT Image 2 to preserve the referenced logo exactly without changes. If the model cannot receive a reference or distorts the logo, repair with a real `assets/brand/` overlay instead of shipping the distorted logo.

Avoid:

- generated S-like marks presented as official;
- misspelled or warped `Биржевик` wordmarks;
- logo-like marks created only by prompt wording, without a real logo reference;
- retyped fallback wordmarks treated as the brand lockup;
- recolored, stretched, traced, or distorted logo crops.

## Color Drift

Avoid:

- green/red as brand colors;
- purple SaaS gradients;
- orange/yellow profit banners;
- magenta cyberpunk;
- generic black-gold luxury.

## Generic Trading Thumbnail

Avoid:

- random trader in suit;
- screaming face;
- Wall Street stock image;
- overlaid arrows everywhere;
- fake terminal screens;
- five tickers in one thumbnail.

## Text Volume

Use one headline and optional short caption. Keep generated Russian text short.
