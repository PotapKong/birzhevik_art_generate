# Birzhevik Art Generator Skill

Production-oriented Codex/OpenAI skill scaffold for generating branded Биржевик covers, social headers, video previews, podcast covers, and market-themed editorial visuals.

This repo is modeled after `PotapKong/human20-cover-generator`, but the brand system is Birzhevik-specific: dark financial canvas, blue/cyan energy, Vela Sans GX / Manrope typography direction, chart textures, glass topic chips, 3D tokens, podcast objects, and exact logo discipline.

## What It Does

- Creates prompt-ready and generation-ready instructions for GPT Image 2.
- Hard-locks the main artwork path to GPT Image 2, not code-generated PIL/HTML/SVG/Canvas templates.
- Hard-locks Birzhevik logo usage to real references from `assets/brand/` or `references/images/`; GPT Image 2 must not invent the logo from memory and must integrate the referenced logo organically into the scene.
- Forces reference intake before generation.
- Supports article covers, Telegram/Dzen covers, video previews, podcast covers, vertical social covers, and clean financial infographics.
- Keeps third-party logos, charts, broker/exchange marks, and market screenshots on an official-asset or text-only fallback path.
- Includes rendered pages from the supplied Birzhevik identity PDF under `references/images/`.

## Folder Structure

```text
SKILL.md                         # main agent workflow
agents/openai.yaml               # Codex/OpenAI app metadata
references/*.md                  # brand, format, prompt, safety, and asset rules
references/images/               # visual references from the Birzhevik identity PDF
assets/brand/                    # real logo crops/exports and future official logo/font files
scripts/                         # helper scripts for third-party logo lookup
docs/                            # source-skill analysis and brand-intake notes
```

## Current Brand Intake

From the supplied identity PDF:

- Fonts: Vela Sans GX / Manrope.
- Core colors: `#01037A`, `#00004A`, `#0199F7`, `#02A5FF`, `#0042FF`.
- Visual mood: dark navy/black financial editorial, cyan/blue glow, subtle grid and candlestick textures.
- Signature objects: angular S-like Birzhevik mark, 3D logo tile, token/coin stack, chart arrow, mechanical gripper, microphone for podcasts.
- Existing examples: social header, video preview, podcast cover, token/object compositions, gradient grid background.

## Reference Intake Before Generation

Before any final image prompt or generation, the agent must read:

- `references/reference-dna.md`
- `references/reference-gallery.md`
- `references/visual-system.md`
- `references/typography-lock.md`
- `references/accent-colors.md`
- `references/formats.md`
- `references/generation-modes.md`
- `references/headline-patterns.md`

Then inspect 3-5 relevant images from `references/images/`, starting with `birzhevik-identity-page-1.png`.

## No Code-Generated Artwork

Birzhevik visuals are GPT Image 2-first. Do not create the main cover, banner, preview, podcast art, or social image as a flat PIL, Python, HTML, CSS, SVG, Canvas, or scripted layout.

Code or compositing may be used only after GPT Image 2 creates the main scene, and only for narrow production fixes: official logo overlay, exact text correction, crop/resize, or insertion of supplied verified screenshots/assets.

## Logo And Fonts

The rendered PDF references are included. The repo also contains reference-derived PNG logo assets cropped from the supplied Birzhevik identity references:

```text
assets/brand/birzhevik-lockup-reference-dark.png
assets/brand/birzhevik-mark-reference-blue.png
assets/brand/birzhevik-lockup-reference-panel.png
assets/brand/birzhevik-mark-reference-blue-on-dark-tile.png
```

Add clean future production exports here when available:

```text
assets/brand/birzhevik-mark.svg
assets/brand/birzhevik-lockup-light.svg
assets/brand/birzhevik-lockup-dark.svg
assets/brand/VelaSansGX.ttf
assets/brand/Manrope.ttf
```

Generation prompts must first select a real logo reference from `assets/brand/` or `references/images/`, pass that reference to GPT Image 2 when image references are supported, and explicitly require the logo to stay unchanged: same geometry, spelling, colors, proportions, and spacing. The logo should be organically integrated into the generated scene as a real surface or object detail, not pasted on as a flat sticker. Do not ask GPT Image 2 to draw, spell, stylize, approximate, or invent the official Birzhevik logo from memory. If the tool cannot pass a reference or the result distorts the logo, repair by overlaying a real `assets/brand/` asset after generation and match perspective, lighting, shadows, and material.

## Scripts

Third-party company/platform logo lookup:

```powershell
.\scripts\find-company-logo.ps1 moex default
.\scripts\find-company-logo.ps1 telegram mono
```

If a reliable SVG is not found, use a text-only product chip. Do not ask the image model to invent official logos.
