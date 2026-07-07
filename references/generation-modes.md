# Generation Modes

Choose one mode before prompting.

## Backend Boundary

All generation modes below are GPT Image 2-first modes. Do not use PIL, Python, HTML, CSS, SVG, Canvas, or any scripted layout as the primary way to create a Birzhevik cover, banner, preview, or podcast artwork.

Code and compositing are allowed only as post-generation production fixes for exact text, official logo placement, crop repair, or supplied screenshots. They must not replace the main GPT Image 2 scene with a flat code-made template.

Logo boundary: GPT Image 2 must not create the official Birzhevik logo, mark, wordmark, or lockup from memory. When a logo is needed, provide a real logo reference from `assets/brand/` or `references/images/` and prompt GPT Image 2 to preserve it exactly without redraw, retyping, distortion, recolor, or invented variants. If the tool cannot pass the reference or the result distorts the logo, repair with a real `assets/brand/` overlay after generation.

## Market Editorial Cover

Use for articles, Telegram, Dzen, and market notes.

Prompt emphasis:

- premium dark financial cover;
- large Russian headline;
- one market metaphor;
- chart/grid atmosphere;
- one strong hero/proof;
- real Birzhevik logo reference passed to GPT Image 2 if a logo is needed;
- no fake dense terminal text.

## Premium Token / Object Cover

Use when the user wants a stronger cinematic image.

Prompt emphasis:

- 3D Birzhevik token, coin stack, logo glass tile, or chart arrow;
- metallic material and cyan rim light;
- shallow depth and dark studio background;
- blue glow and market texture;
- no coin piles or casino imagery.

## Social / Video Preview

Use for video thumbnails and channel visuals.

Prompt emphasis:

- large feed-readable headline;
- Birzhevik lockup preserved from a real `assets/brand/` or `references/images/` logo reference;
- hero object on the right or center;
- dark market background;
- clean subtitle only when needed.

## Podcast Cover

Use for podcast art and audio episodes.

Prompt emphasis:

- microphone hero;
- audio waveform pill;
- dark candlestick/chart background;
- large episode or show title;
- no fake platform UI.

## Clean Financial Infographic

Use for data, comparisons, risk, asset allocation, or educational graphics.

Prompt emphasis:

- 2-4 cards max;
- exact numbers only from input;
- blue key takeaway;
- no fake tiny market data;
- simple icons or abstract chart bars.

## Refinement

Use when fixing generated output.

Prompt emphasis:

- preserve existing composition;
- fix only text, logo, crop, palette, or density;
- replace fake data with abstract chart texture or supplied screenshot;
- use official logo asset if exact fidelity matters.
