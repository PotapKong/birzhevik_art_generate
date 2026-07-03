# Company Logo Library

Use this file when a Birzhevik cover needs a recognizable third-party company, platform, broker, exchange, tool, or product logo.

## Source

The local lookup workflow queries `glincker/thesvg`, an MIT-licensed public SVG library. The repo downloads only requested logos into:

`_cache/company-logos/`

The cache is ignored by git.

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

1. Read `references/product-assets.md`.
2. Try this local lookup before broad web search.
3. If the SVG is found, use it as an official asset source.
4. If no SVG is found, search official sources.
5. If no reliable asset is found, use a text-only chip.

Do not ask GPT Image to invent third-party logos.
