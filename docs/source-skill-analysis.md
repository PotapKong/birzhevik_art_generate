# Source Skill Analysis

Source studied: `PotapKong/human20-cover-generator` at commit `d5a984d`.

## Structure

The source repo is an agent skill, not a full npm app in its current checkout.

Key files:

- `SKILL.md`: central workflow, backend lock, reference-intake protocol, prompt template, refinement loop, and quality check.
- `agents/openai.yaml`: interface metadata and default prompt.
- `references/*.md`: modular reference contract for DNA archetypes, gallery routing, visual system, typography, colors, formats, generation modes, headlines, assets, anti-patterns, and evals.
- `references/images/*`: visual examples and identity references.
- `assets/brand/*`: official brand assets and fonts.
- `scripts/find-company-logo.ps1`: helper for third-party logo lookup through `glincker/thesvg`.
- `scripts/update-company-logo-cache.ps1`: helper to warm/update downloaded logo cache.

## Agent Logic

The important behavior is not file names alone. The source skill forces the agent to:

1. Read required references before prompting.
2. Inspect relevant images when available.
3. Name the audience mode, generation mode, reference archetype, DNA archetype, visible traits, typography plan, logo plan, palette rule, and anti-patterns.
4. Prefer GPT Image 2 for the main composition.
5. Use manual code only for narrow logo, text, or screenshot correction.
6. Reject generic card grids, fake logos, wrong brand colors, dense tiny text, and weak metaphors.
7. Use official or user-provided assets for logos, mascots, screenshots, and product marks.

## What Was Adapted For Birzhevik

Kept:

- same top-level repository shape;
- same modular reference approach;
- same mandatory reference intake;
- same format/mode/DNA routing;
- same strict logo and third-party asset rules;
- same quality-gate style.

Changed:

- Human 2.0 light editorial palette became Birzhevik dark financial palette;
- mascot requirement became optional/future-only;
- Human 2.0 logo rules became Birzhevik mark/token/lockup rules;
- AI/community topic patterns became finance, market, trading, podcast, and analytics patterns;
- headline rules now avoid investment hype and fake return claims;
- source PDF pages were added as Birzhevik reference images.
