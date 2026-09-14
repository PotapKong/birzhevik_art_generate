# Company Logo Library

Use this file when a Birzhevik cover needs a recognizable third-party company, platform, broker, exchange, tool, or product logo.

## Source

The local lookup workflow queries `glincker/thesvg`, an MIT-licensed public SVG library. It is a **discovery mirror**, not proof that a logo is official, current, complete, or approved for unrestricted reuse. The repo downloads only requested candidates into:

`_cache/company-logos/`

The cache is ignored by git. Before a candidate appears in a final Birzhevik image, compare it with the entity's current official website, press kit, brand page, investor-relations page, or product page and record that source-page URL under `references/thematic-asset-sourcing.md`.

## Find A Logo

Run from the skill folder:

```powershell
.\scripts\find-company-logo.ps1 <brand-name> [default|mono|color|dark|light]
```

Examples:

```powershell
.\scripts\find-company-logo.ps1 telegram default
.\scripts\find-company-logo.ps1 youtube mono
.\scripts\find-company-logo.ps1 moex default
```

## Variant Choice

- `default`: official full-color logo.
- `mono`: single-color variant when a logo should sit inside a Birzhevik dark/blue system.
- `dark` / `light`: use only when supplied by the source and required by background.

## Workflow

1. Read `references/product-assets.md` and `references/thematic-asset-sourcing.md`.
2. Try this local lookup to discover a likely candidate before broad web search.
3. Open the named entity's official site and compare the candidate against the current mark: geometry, spelling, colours, proportions, clear space, and available variants.
4. Record the official source page, direct candidate path, check time, and rights status in the topic source ledger.
5. Treat the candidate as an identity anchor only after that cross-check. The third-party library itself is not enough to call an asset official.
6. If the candidate does not match, search the official media/brand/press/IR source directly.
7. If no reliable asset is found, use a text-only chip.

Do not ask GPT Image to invent third-party logos.
