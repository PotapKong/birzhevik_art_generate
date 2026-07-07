# Logo Asset Rules

Use real Birzhevik logo references whenever a logo, mark, wordmark, or lockup appears in the final image.

## Current Status

The repo includes rendered identity PDF pages in `references/images/`. Clean standalone SVG assets are not yet bundled, but the repo now includes reference-derived PNG assets cropped from those supplied identity references.

Available reference-derived PNG assets:

- `assets/brand/birzhevik-lockup-reference-dark.png`
- `assets/brand/birzhevik-mark-reference-blue.png`
- `assets/brand/birzhevik-lockup-reference-panel.png`
- `assets/brand/birzhevik-mark-reference-blue-on-dark-tile.png`

Expected future production exports:

- `assets/brand/birzhevik-mark.svg`
- `assets/brand/birzhevik-mark.png`
- `assets/brand/birzhevik-lockup-light.svg`
- `assets/brand/birzhevik-lockup-dark.svg`

## Main Rule

Never ask the image model to invent, redraw, retype, stylize, or approximate the official Birzhevik logo from memory. This applies even when exact fidelity merely seems "nice to have": generated logos drift, and a drifting logo must not ship.

If the final image needs the official logo/lockup:

1. Select one real logo reference from `assets/brand/` or `references/images/`.
2. Attach or otherwise provide that logo reference to GPT Image 2 when the tool supports image references.
3. In the prompt, require the logo to stay exactly as in the reference: same mark geometry, word spelling, proportions, colors, spacing, and orientation.
4. Ask GPT Image 2 to integrate the referenced logo organically into the scene: printed, embossed, illuminated, engraved, or mounted on a glass tile, token, device, dark panel, microphone plate, chart object, or clean lockup surface.
5. Require matching perspective, lighting, shadows, reflections, material, and depth so the logo feels native to the generated image, not pasted on top.
6. Do not ask the model to create a new mark, retype the wordmark, trace from memory, recolor, stretch, crop, or approximate the logo.

If the generation tool cannot pass image references, or the model distorts the logo:

- generate with a natural logo placement surface;
- repair by compositing one real `assets/brand/` logo/lockup file after generation, matching the target surface, perspective, lighting, and shadow;
- do not accept the distorted logo as final.

Generated token/coin/glass objects may use abstract Birzhevik-inspired geometry only as background scene objects, never as the final official lockup or mark.

## Placement

- 16:9 cover: top-left or bottom-left safe zone.
- Video preview: top-left.
- Podcast cover: top-left breadcrumb or compact lockup.
- Social header: large brand wordmark left, mark or object center/right.

## Checks

- Logo is not stretched.
- Logo feels integrated into the scene, not pasted as a flat sticker.
- Logo mark is not warped into a random Z/S shape.
- Word `Биржевик` is spelled correctly.
- Logo does not compete with the headline.
- Generated token/coin object is allowed to be stylized, but final official lockup should use real assets.
