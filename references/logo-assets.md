# Logo Asset Rules

Use official Birzhevik logo assets whenever the logo must be exact.

## Current Status

The repo includes rendered identity PDF pages in `references/images/`. Clean standalone SVG/PNG logo assets are not yet bundled.

Expected future paths:

- `assets/brand/birzhevik-mark.svg`
- `assets/brand/birzhevik-mark.png`
- `assets/brand/birzhevik-lockup-light.svg`
- `assets/brand/birzhevik-lockup-dark.svg`

## Main Rule

Do not ask the image model to invent, redraw, or retype the Birzhevik logo when exact fidelity matters.

If exact logo fidelity matters:

1. Generate the composition with clean logo space.
2. Composite the official logo asset after generation.

If no official asset is available:

- leave clean space for manual placement;
- use a simple text fallback `Биржевик`;
- use an abstract S-like token only as a generated scene object, not as the official logo.

## Placement

- 16:9 cover: top-left or bottom-left safe zone.
- Video preview: top-left.
- Podcast cover: top-left breadcrumb or compact lockup.
- Social header: large brand wordmark left, mark or object center/right.

## Checks

- Logo is not stretched.
- Logo mark is not warped into a random Z/S shape.
- Word `Биржевик` is spelled correctly.
- Logo does not compete with the headline.
- Generated token/coin object is allowed to be stylized, but final official lockup should use real assets.
