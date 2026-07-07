---
name: birzhevik-art-generator
description: Create branded Birzhevik images, covers, social headers, video previews, podcast covers, and market-themed editorial visuals from Russian post/article text. Use when the user asks to придумать/сгенерировать/перегенерировать баннер, обложку, картинку, превью, шапку, podcast cover, Reels cover, Telegram image, Dzen image, or brand-consistent financial/trading artwork for Биржевик.
---

# Birzhevik Art Generator

## Overview

Turn a post, article, video topic, podcast idea, or market note into a polished Birzhevik branded visual. Prefer one clear editorial claim, one short Russian headline, one strong market metaphor, and a premium dark financial composition over dense diagrams.

The skill mirrors the Human 2.0 cover-generator structure: the agent must read references first, choose a format, choose a generation mode, choose a Reference DNA archetype, verify brand assets, then build the final GPT Image prompt or generate the image when requested.

## Generation Backend Lock

Use GPT Image 2 as the approved generation backend for Birzhevik covers unless the user explicitly changes the backend. The image model must create the main composition: logo/token object, lighting, depth, market background, charts, glass chips, device surfaces, or podcast objects.

## Hard No Code-Generated Artwork Rule

Do not use code generation as the primary image-making path for Birzhevik visuals. Do not create the cover/banner/preview as a flat PIL, Python, HTML, CSS, SVG, Canvas, or scripted layout when the task is to generate a branded image.

The agent must not "draw" the main artwork with code, even if that seems easier for exact text or layout. Build a GPT Image 2 prompt from the references and generate the premium financial scene first.

Manual code, image editing, or compositing is allowed only after GPT Image 2 has created the main scene, and only for narrow production fixes:

- overlay the official Birzhevik logo if the generated logo is wrong;
- replace or sharpen exact Russian headline text;
- insert a real screenshot, chart, or broker/exchange evidence panel when accuracy matters.

These fixes must not replace the generated artwork with a code-made template. If exact text or logo fidelity is critical, generate clean safe zones and then patch only the text/logo layer.

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
- palette rule;
- market-data/product asset rule;
- anti-patterns being actively avoided.

Do not generate if you cannot name one DNA archetype and at least 3 concrete visual traits from inspected Birzhevik references.

## Core Workflow

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
9. Apply Birzhevik brand rules:
   - dark financial canvas, usually near-black/navy;
   - primary darks `#00004A` and `#01037A`;
   - bright cyan/blue highlights `#02A5FF`, `#0199F7`, and `#0042FF`;
   - blue gradient `#02A5FF -> #0042FF` for the mark, glow, token edge, or key accent;
   - white typography and surfaces with blue glow only where needed;
   - Vela Sans GX / Manrope typography direction;
   - market chart texture, candlesticks, grid, glass chips, 3D tokens, coins, microphone, devices, or mechanical manipulator only when they support the story;
   - premium finance tone: confident, precise, analytical, not hype-trader noise.
10. Generate the image with GPT Image 2 when requested. Keep the final response concise: concept, headline, and any caveat about generated text/logo fidelity.

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
Use official or user-provided assets for the Birzhevik logo and for all recognizable company, exchange, broker, or product marks. If an exact logo or chart cannot be verified, use a text-only chip or abstract market surface. Do not invent fake broker/exchange/company logos or fake market screenshots.

Brand style:
Use the Birzhevik identity: deep navy/near-black canvas, dark blues #00004A and #01037A, bright cyan #02A5FF, electric blue #0199F7 and #0042FF, and the blue gradient #02A5FF -> #0042FF for the logo, glow, token rim, or key accent. Use white typography. Typography should follow Vela Sans GX / Manrope proportions: clean modern grotesk, large confident Cyrillic, tight but readable line height. Premium financial editorial mood, not casino trading hype.

Logo/footer:
Use the official attached Birzhevik logo asset exactly if available. Preserve its aspect ratio. If no logo asset is available, leave clean space for manual placement or use a simple text lockup `Биржевик`.

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
5. For Birzhevik logo fixes, use an official logo asset from `assets/brand/` or leave clean space for manual placement.
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
- No fake market data, fake ticker, fake exchange logo, or guaranteed-return claim appears.
- Critical text and logo are inside safe zones.
- The result would not look like a generic trading-template if the headline were swapped.
