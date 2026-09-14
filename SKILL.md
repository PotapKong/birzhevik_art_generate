---
name: birzhevik-art-generator
description: Create branded Birzhevik images, covers, social headers, video previews, podcast covers, and market-themed editorial visuals from Russian post/article text. Use when the user asks to придумать/сгенерировать/перегенерировать баннер, обложку, картинку, превью, шапку, podcast cover, Reels cover, Telegram image, Dzen image, or brand-consistent financial/trading artwork for Биржевик.
---

# Birzhevik Art Generator

## Overview

Turn a post, article, video topic, podcast idea, or market note into a polished Birzhevik branded visual. Prefer one clear editorial claim, one short Russian headline, one strong market metaphor, and a premium dark financial composition over dense diagrams.

The skill mirrors the Human 2.0 cover-generator structure: the agent must read references first, choose a format, choose a generation mode, choose a Reference DNA archetype, verify brand assets, then build the final GPT Image prompt or generate the image when requested.

## Generation Backend Lock

Use GPT Image 2 as the approved generation backend for Birzhevik covers unless the user explicitly changes the backend. The image model must create the main composition: lighting, depth, market background, charts, glass chips, device surfaces, podcast objects, and Birzhevik-branded scene objects.

Do not ask GPT Image 2 to invent, redraw, spell, or approximate the official Birzhevik logo, mark, or lockup from memory. When the final image needs a logo, first use real logo references from `assets/brand/` or `references/images/`, then send the request to GPT Image 2 with that logo reference and explicitly require the logo to be preserved exactly, unchanged, undistorted, unredrawn, and with the same proportions.

The logo should be organically integrated into the generated scene, not pasted on like a sticker. Ask GPT Image 2 to place the referenced logo as a native design element: on a glass tile, metallic token, dark brand panel, device surface, microphone plate, chart object, or clean lockup area, with matching perspective, lighting, shadows, reflections, material, and depth.

## Hard No Code-Generated Artwork Rule

Do not use code generation as the primary image-making path for Birzhevik visuals. Do not create the cover/banner/preview as a flat PIL, Python, HTML, CSS, SVG, Canvas, or scripted layout when the task is to generate a branded image.

The agent must not "draw" the main artwork with code, even if that seems easier for exact text or layout. Build a GPT Image 2 prompt from the references and generate the premium financial scene first.

Do not use PIL, OpenCV, ImageMagick, HTML/CSS/SVG/Canvas, or any other scripted compositing for visible artwork, typography, logos, screenshots, perspective placement, or layout repair. This applies even after GPT Image 2 has generated the main scene.

When GPT Image 2 distorts text, a logo, or a topic anchor, use another GPT Image 2 generation/edit with the verified reference. If fidelity still fails, simplify the composition, omit that visible asset, or report the limitation instead of pasting it in by code.

Programmatic tools may be used only for non-visual technical operations that do not alter visible content: file inspection, metadata checks, lossless format conversion, compression, and crop/resize when no artwork is added or moved.

## Mandatory Reference Intake

Before calling image generation or writing a final image prompt, complete a reference intake. Do not rely only on this `SKILL.md`.

Always read these reference files for new Birzhevik generation:

- `references/reference-dna.md`
- `references/headline-patterns.md`
- `references/reference-gallery.md`
- `references/visual-system.md`
- `references/typography-lock.md`
- `references/accent-colors.md`
- `references/formats.md`
- `references/generation-modes.md`

Read these conditionally:

- `references/logo-assets.md` before adding a Birzhevik logo, mark, token, or footer.
- `references/thematic-asset-sourcing.md` whenever a post names or centers a real exchange, company, broker, regulator, person, product, index, commodity, event, facility, document, or place. This is mandatory even when an abstract metaphor would be easier.
- `references/product-assets.md` before adding third-party exchange, broker, company, ticker, website, GitHub, product, or chart screenshots.
- `references/company-logo-library.md` before adding recognizable third-party company, platform, product, exchange, or broker logos.
- `references/anti-patterns.md` before refinement, when exact text/logo/color fidelity matters, or when a previous generation missed the style.
- `references/cover-patterns.md` when choosing between concepts or strengthening a weak market metaphor.
- `references/mascot-assets.md` only if a future Birzhevik mascot/character is supplied.

If `references/images/` contains examples relevant to the requested format, inspect 3-5 closest image files with the available visual tool before prompting. Inspect `birzhevik-identity-page-1.png` first for the brand system, then choose page 2, 3, 4, or 5 depending on the requested artifact.

Before generation, name the reference intake in working notes or prompt plan:

- audience mode;
- generation mode;
- selected reference archetype;
- selected Reference DNA archetype;
- 3-5 visible traits copied from the inspected references;
- typography rule;
- headline placement plan;
- logo/mark/token integration plan;
- topic anchor, source-page URL, rights status, and exact reference role when the post has a real-world subject;
- palette rule;
- market-data/product asset rule;
- anti-patterns being actively avoided.

Do not generate if you cannot name one DNA archetype and at least 3 concrete visual traits from inspected Birzhevik references.

## Core Workflow

### Routing Pitfall

If the user asks for a cover “в стиле Биржевика”, “по айдентике Биржевика”, or provides `PotapKong/birzhevik_art_generate`, route to this skill first. Do **not** substitute Human 2.0 cover rules or generic trading-card references. If the skill is not installed yet but the GitHub repo is supplied, install/update this skill from that repo, then load it and complete the reference intake before generation.

### Promo Variant From A Reference Image

When the user supplies an existing promo cover and asks for “такой же, только в стиле Биржевика”, treat the attachment as layout rhythm only and the Birzhevik references as the brand source of truth:

1. Use the attachment for composition cues: left text block, accent bar, discount/code hierarchy, background chart rhythm, object balance.
2. Generate the complete artwork with GPT Image 2 using Birzhevik palette and verified references.
3. When the copy must be exact, include the final Russian text in the generation request and run GPT Image 2 refinement/edit passes for misspellings, spacing, or hierarchy. Do not add or replace visible text with PIL, OpenCV, HTML/CSS/SVG/Canvas, or scripted compositing.
4. QA the generated image visually for exact copy, 16:9 crop, no clipping, no pseudo-text, and readable thumbnail hierarchy before delivery.

### Real-World Topic Anchor Gate

When the post names or clearly centers a real exchange, company, broker, regulator, person, product, index, commodity, event, facility, document, or place, a generic metaphor is not sufficient.

1. Read `references/thematic-asset-sourcing.md` and extract the primary named subject, claim, date/period, and visual consequence.
2. Search the web for at least one verified topic anchor: current official logo, official/authorised environment image, current product or UI, primary document, or real chart/screen tied to the claim.
3. Prefer user-supplied and official sources, then licensed/CC sources. A search thumbnail or public news photo is not automatically reusable. An official asset is not automatically unrestricted: check the owner's trademark, brand-use, media-use, and data-reproduction terms.
4. Open the source page, inspect the actual asset with vision, check currency, rights, required attribution/backlinks, and permission status, then record provenance in `_cache/topic-assets/<topic>/<date>/sources.md`.
5. Attach the topic anchor as a separate reference with an explicit role. Birzhevik references control style; the topic reference controls real-world identity or factual proof. Do not attach a failed/off-topic prior cover for layout if it contains a misleading hero or background; describe the layout in text and use clean brand references instead.
6. Preserve exact third-party logos and evidence pixels through the supplied image references. Do not ask GPT Image to redraw a logo, chart, product screen, building, or person from memory.
7. Integrate the anchor organically as a sign, facade element, monitor, chart wall, product surface, document, or scene object. Keep it subordinate to Birzhevik branding and never imply endorsement.
8. If a logo, screenshot, chart, or evidence panel is distorted, run a GPT Image 2 refinement/edit using the verified reference. Never repair visible content with PIL, OpenCV, ImageMagick, HTML/CSS/SVG/Canvas, or scripted compositing.
9. If exact fidelity still fails, simplify the scene or choose another verified topic anchor. If no trustworthy or reusable anchor exists, use a text-only identity chip plus abstract context and report the limitation. Never ship an invented or code-pasted named-subject visual.

A named-topic cover fails when the headline says `Мосбиржа`, `Сбер`, `Газпром`, `ЦБ`, or another identifiable subject while the scene contains only a generic arrow, generic office, generic refinery, or anonymous chart.

1. Read the supplied text and extract the central claim, not every detail.
2. Choose the audience mode:
   - `Mass investor` for social, Telegram, Dzen, beginner investors, and broad finance readers.
   - `Market-aware` for active investors, traders, and people who know tickers, bonds, MOEX, portfolio risk, and analytics.
   - `Professional / technical` only when the content is clearly for analysts, traders, quants, or the user asks for a technical market visual.
3. Choose the generation mode:
   - `Social / video preview` for YouTube, Telegram video, and horizontal previews.
   - `Podcast cover` for audio and podcast artwork.
   - `Market editorial cover` for articles and Telegram/Dzen posts.
   - `Clean financial infographic` for tables, metrics, comparison cards, or educational slides.
   - `Premium token/object cover` for cinematic 3D visuals.
   - `Refinement` when fixing a failed generation, crop, logo, text, or brand mismatch.
4. Complete the Mandatory Reference Intake above.
5. Choose one short Russian headline that is understandable in a feed.
6. Choose the closest reference archetype from `references/reference-gallery.md`.
7. Build one visual metaphor that supports the claim.
8. Choose the Reference DNA archetype from `references/reference-dna.md`.
9. Apply Birzhevik logo discipline:
   - if the final image needs the official mark, wordmark, or lockup, select a real reference file from `assets/brand/` or `references/images/` before prompting;
   - include or attach that real logo reference in the GPT Image 2 request whenever the tool supports image references;
   - explicitly instruct GPT Image 2 to preserve the logo exactly as in the reference: no redraw, no retyping, no style drift, no proportion changes, no invented variants;
   - instruct GPT Image 2 to integrate the referenced logo naturally into the scene surface or object, with matching light, perspective, material, and depth;
   - never ask GPT Image 2 to draw or type the official logo/wordmark from memory;
   - if the available generation tool cannot pass a logo reference, omit the official logo or choose another verified topic anchor; do not paste the logo into the generated scene with code.
10. Apply Birzhevik brand rules:
   - dark financial canvas, usually near-black/navy;
   - primary darks `#00004A` and `#01037A`;
   - bright cyan/blue highlights `#02A5FF`, `#0199F7`, and `#0042FF`;
   - blue gradient `#02A5FF -> #0042FF` for the mark, glow, token edge, or key accent;
   - white typography and surfaces with blue glow only where needed;
   - Vela Sans GX / Manrope typography direction;
   - market chart texture, candlesticks, grid, glass chips, 3D tokens, coins, microphone, devices, or mechanical manipulator only when they support the story;
   - premium finance tone: confident, precise, analytical, not hype-trader noise.
11. Generate and refine the complete visible image with GPT Image 2 when requested. Keep the final response concise: concept, headline, which real topic/logo reference was used, and whether the generated result passed fidelity QA.

## Brand Language Rules

Use the brand name exactly:

- `Биржевик`

Prefer Russian finance vocabulary that sounds practical:

- `акции`
- `облигации`
- `рынок`
- `портфель`
- `риск`
- `аналитика`
- `торговые идеи`
- `биржевая торговля`

Avoid:

- fake investment promises;
- guaranteed returns;
- aggressive pump language;
- casino/trading-guru tone;
- too many tickers or tiny chart labels inside one image.

## Headline Rules

Use one large headline, usually 2-3 lines for horizontal covers and 3-5 short lines for vertical covers. A broad-audience viewer should understand the practical value without reading the post.

Priority:

1. Clear market question or useful action.
2. Investor consequence.
3. Asset class or ticker.
4. Analytical proof.
5. Technical details.

Examples:

- `ОСНОВЫ БИРЖЕВОЙ ТОРГОВЛИ`
- `КАК СЧИТАТЬ РИСКИ СДЕЛКИ`
- `АКЦИИ ИЛИ ОБЛИГАЦИИ`
- `ЧТО ПРОИСХОДИТ С РЫНКОМ`
- `ТОРГОВАЯ ИДЕЯ НЕДЕЛИ`
- `КАК НЕ ПЕРЕПЛАТИТЬ ЗА АКЦИЮ`
- `ПОРТФЕЛЬ БЕЗ ЛИШНЕГО РИСКА`
- `МЫСЛИ БИРЖЕВИКА`

Avoid:

- long subtitles as the main text;
- more than 5-7 generated words when exact Russian text matters;
- `иксы`, `ракета`, `100%`, `гарантия`, and similar hype;
- fake tickers or invented numbers.

## Composition Rules

Birzhevik visuals are dark, cinematic, and market-specific. The most reliable structure is:

- dark navy/black background with subtle grid or chart texture;
- large white headline in a dominant safe zone;
- one cyan/blue accent phrase or line;
- one hero object: Birzhevik token, 3D logo, coin stack, chart arrow, microphone, device, glass logo tiles, or framed market screen;
- small logo/lockup in a safe zone;
- 1-4 glass chips or topic labels only when useful;
- cyan glow and blue gradient used as controlled energy, not as full neon chaos.

Do not make every cover a generic stock-market background. The hero/proof must change with the topic.

## Image Prompt Template

Use this structure when calling image generation:

```text
Create a premium Birzhevik branded <FORMAT> image for a Russian finance/trading post about <topic>.

Format:
<16:9 Telegram/Dzen/article cover OR video preview OR 1:1 podcast cover OR 9:16 Reels cover OR clean infographic>. Use safe margins and keep important text away from edges.

Audience mode:
<Mass investor OR Market-aware OR Professional / technical>.

Reference archetype:
Use the closest archetype from references/reference-gallery.md: <archetype name>. Preserve its layout logic, hierarchy, spacing, and visual motifs while adapting the metaphor to this topic.

Reference DNA:
Use the closest archetype from references/reference-dna.md: <Dark Market Banner / Token Hero / Podcast Studio / Glass Tag System / Financial Infographic>. The dominant hero/proof is <one sentence>.

Reference evidence:
Use these concrete traits from the inspected Birzhevik references: <3-5 traits covering dark palette, typography, glow, chart texture, object style, spacing, and logo placement>.

Asset sources:
Use real assets from `assets/brand/` or `references/images/` as Birzhevik logo references. If the post has a real-world named subject, include the verified topic-anchor bundle from `references/thematic-asset-sourcing.md`: identify which reference is the official identity anchor, which is factual evidence, and which is environment reference. State the original source-page URL and rights status in working notes. Birzhevik references control style; topic references control identity and factual grounding. Preserve official company, exchange, broker, regulator, person, product, building, document, website, and chart attributes exactly. If an exact topic asset cannot be verified or reused, use a text-only chip or abstract market surface and report the limitation. Do not invent Birzhevik or third-party logos, real-world architecture, people, product UI, market screens, or precise charts.

Topic grounding:
Reference <N> is the verified identity anchor for <entity>, sourced from <official/licensed source>. Preserve its defining identity exactly and integrate it organically into <sign/screen/facade/product/document surface>. Reference <N+1>, when present, is factual evidence for <claim/date>; keep its pixels, values, labels, and direction literal. Do not merge, restyle, or confuse Birzhevik and third-party brands, and do not imply endorsement.

Brand style:
Use the Birzhevik identity: deep navy/near-black canvas, dark blues #00004A and #01037A, bright cyan #02A5FF, electric blue #0199F7 and #0042FF, and the blue gradient #02A5FF -> #0042FF for glow, token rim, or key accent. Use white typography. Typography should follow Vela Sans GX / Manrope proportions: clean modern grotesk, large confident Cyrillic, tight but readable line height. Premium financial editorial mood, not casino trading hype.

Logo/footer:
Use a real Birzhevik logo reference from `assets/brand/` or `references/images/` in the GPT Image 2 request. Tell the model to preserve the referenced logo exactly and unchanged: same mark geometry, word spelling, proportions, colors, and spacing. Also tell it to integrate the logo organically into the composition as a real scene element, not as a flat pasted watermark. If the model distorts the logo or cannot accept image references, repair with a real `assets/brand/` logo overlay after generation and match the surface, perspective, lighting, and shadow.

Core meaning:
<one paragraph explaining the post's main claim and why the viewer should care>

Visual concept:
<one sparse market metaphor with 3-4 elements max>

Composition:
<mode-specific composition from references/formats.md and references/generation-modes.md>. Choose headline placement deliberately. Use restrained cyan glow, chart/grid atmosphere, and one strong hero object. Make this a finished GPT Image 2 cover, not a blank base for later layout.

Text on image:
Use only this Russian headline, large and clean:
"<HEADLINE>"
Optional small caption only if there is enough space:
"<short topic caption>"

Style constraints:
Premium dark financial cover, crisp market atmosphere, strong depth/materiality, generous spacing, no fake dense UI text, no fake tickers, no guaranteed-profit claims, no crypto-casino mood, no generic cyberpunk, no watermark.
```

## Refinement Workflow

When the user asks to fix a generated image:

1. Preserve the strongest existing composition unless the user asks to redesign.
2. Identify exactly what failed: text, logo, crop, visual density, brand mismatch, wrong format, fake market data, or weak metaphor.
3. Use `references/anti-patterns.md` to avoid repeating the error.
4. For text fixes, reduce the amount of generated text or leave negative space for manual typography.
5. For Birzhevik logo fixes, use a real logo/lockup asset from `assets/brand/` or a real logo reference from `references/images/`. Never fix a bad logo by asking the model to redraw it from memory.
6. For third-party logo fixes, use official/user-provided assets or a text-only card.
7. For chart/screenshot fixes, insert the real screenshot or make the chart abstract. Do not present fake numbers as real data.

## Quality Check

Before finalizing:

- Mandatory Reference Intake was completed.
- `references/reference-dna.md` was applied.
- The selected reference archetype and 3 concrete traits are visible.
- The image reads as Биржевик: dark financial canvas, cyan/electric blue accents, Vela/Manrope-like typography, market texture, and exact/simple logo treatment.
- The headline is readable at thumbnail size.
- The image communicates one idea, not a list of features.
- GPT Image created the main composition.
- The official Birzhevik logo/lockup, if present, was based on a real reference from `assets/brand/` or `references/images/`, not model imagination.
- A named real-world subject has at least one verified topic anchor with source-page provenance and rights status; generic scenery alone is a failure.
- Third-party logos, products, places, people, documents, charts, and screens match their verified references and are not model inventions.
- Real chart/screenshot evidence remains literal and supports the same instrument, date, unit, and claim used in the post.
- No fake market data, fake ticker, fake exchange logo, or guaranteed-return claim appears.
- Critical text and logo are inside safe zones.
- The result would not look like a generic trading-template if the headline were swapped.
