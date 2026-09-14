# Thematic Asset Sourcing

Use this workflow whenever a Birzhevik post names or clearly centers a real exchange, company, broker, regulator, person, product, index, commodity, event, facility, document, or place. A generic chart, arrow, refinery, office tower, or token is not enough when the topic has recognizable real-world attributes.

## Core rule

Before generation, find at least one verified **topic anchor** and assign it an explicit role in the image request. The topic anchor should make the subject recognizable even if the headline is hidden.

Examples of topic anchors:

- exact official logo or wordmark;
- current official website, product, exchange, or filing screenshot;
- real chart or market screen tied to the claim and date;
- official or licensed facade, trading-floor, factory, aircraft, ship, device, product, or executive image;
- regulator decision page, investor presentation, annual-report cover, exchange notice, or other primary document;
- a user-supplied photo or screenshot.

If no trustworthy anchor can be found, use a plain text label plus abstract imagery and state that the named subject is not visually verified. Never invent a logo, building, product, interface, person, or documentary-looking scene.

## 1. Extract the visual entities

From the post or source brief, list:

- primary named subject;
- secondary named subjects, if essential;
- factual claim the image must support;
- date or period of the claim;
- visual consequence: growth, fall, launch, decision, outage, deal, production, risk, or comparison.

Choose one primary topic anchor. Do not turn the cover into a collage of every noun in the post.

## 2. Search in source order

Use the web and available browser/image tools. Search broadly only after checking higher-trust sources.

1. User-provided images, screenshots, documents, and links.
2. Official organisation website: press centre, media bank, brand page, investor relations, product page, newsroom, reports, filings, official social account.
3. Primary market source: exchange, regulator, issuer filing, official statistics, official repository or documentation.
4. Reputable licensed or Creative Commons media repository with a visible licence page.
5. Trusted news media for orientation and fact discovery only. A public article image is not automatically reusable.
6. General image search only to locate the original source page, never as the final provenance.

Useful query patterns:

- `site:<official-domain> <entity> logo svg png press kit`
- `site:<official-domain> <entity> media bank newsroom photos`
- `site:<official-domain> <index/ticker> chart <date>`
- `<entity> official investor relations presentation`
- `<entity> official building trading floor factory product image`

Do not accept a search-result thumbnail, repost, Pinterest pin, stock-preview image, or anonymous CDN URL as provenance. Open the source page and trace the original asset.

## 3. Verify every selected asset

For each candidate:

1. Open the source page, not only the image URL.
2. Inspect the image itself with vision.
3. When an official SVG/PNG contains transparency or knockout lettering, rasterize it against the intended light/dark surface before judging colours. Never treat the viewer's black transparency preview as part of the logo.
4. Confirm that the asset depicts the named subject and is current enough for the post.
5. For a logo, compare spelling, geometry, colours, proportions, and current brand usage against the official site.
6. For a chart or screen, confirm the instrument/index, date range, direction, labels, and whether the visual actually supports the claim.
7. For a photo, identify whether it is official, user-supplied, licensed/CC, editorial-only, or unknown.
8. Record the source before generation.
9. If the generation model distorts a verified logo, screenshot, chart, or other evidence, refine or regenerate it with GPT Image 2 and the verified reference. Do not repair visible content through PIL, OpenCV, ImageMagick, HTML/CSS/SVG/Canvas, or scripted compositing. If fidelity still fails, simplify the composition or choose another verified anchor.

Create a small local source ledger under:

`_cache/topic-assets/<topic-slug>/<YYYY-MM-DD>/sources.md`

Record:

```text
entity:
asset_type:
source_page_url:
direct_asset_url_or_local_path:
checked_at:
rights_status: owned | user-supplied | official-brand-terms-checked | licensed/CC | editorial-reference-only | permission-required | unknown-do-not-ship
required_attribution_or_permission:
visual_role: identity | factual-proof | environment-reference | literal-photo
notes:
```

Use a live timestamp from the system. Never put credentials, cookies, signed URLs, or private account data in the ledger.

## 4. Build the reference bundle

Use 3–6 inputs, each with one explicit role:

1. `Birzhevik brand reference` — palette, typography, layout DNA.
2. `Birzhevik official logo` — exact channel lockup.
3. `Topic identity anchor` — exact MOEX/company/product/regulator logo or defining object.
4. `Topic evidence` — real screenshot, chart, document, or event image when the claim needs proof.
5. `Environment reference` — facade, trading floor, factory, product, landscape, or other real context.
6. `Composition reference` — only when needed and only when its hero object is valid for the new topic.

Do not pass a failed or off-topic cover as a composition reference merely to reuse its layout. Image models may preserve its wrong hero, facility, product, person, or background even when the prompt says not to. When a prior cover contains misleading generic scenery, use clean Birzhevik identity pages for spacing/material cues and describe the desired layout in text instead.

Do not tell GPT Image to merge the identities or redraw either logo. State which reference controls brand style and which controls real-world identity.

## 5. Integration rules

### Third-party logo or wordmark

- Preserve it exactly from the verified asset.
- Integrate it as a plausible sign, facade plate, screen header, product label, glass tile, document mark, or small identity panel.
- Match perspective, lighting, material, reflections, and shadows.
- Keep it visually subordinate to Birzhevik branding.
- Do not recolour or stylise it unless the official brand kit explicitly provides that variant.
- Do not imply partnership or endorsement.

### Real chart, website, document, or market screen

- Keep evidence pixels, labels, dates, and values literal.
- Do not ask the image model to recreate precise data from memory.
- Prefer placing the real capture inside a generated monitor, glass panel, document frame, or trading-wall surface.
- If GPT Image distorts the evidence, generate the scene with a clean placement surface and insert the real capture after generation as a narrow production fix.
- A chart must support the same unit and claim used in the post. An index-level chart cannot prove movement in an individual stock, and an intraday peak must not be presented as a closing return.

### Real place, facility, product, or person

- Use owned, user-supplied, official press, or clearly licensed images as literal photo material.
- If an image is reference-only, use it to preserve defining factual features but do not present the generated result as documentary photography.
- For a real person, preserve identity only from an authorised/user-supplied or official press reference; never invent a lookalike and label it as that person.

## 6. Rights and provenance gate

Publicly visible does not mean free to reuse.

- Do not remove watermarks, credits, agency marks, or copyright notices.
- Do not ship commercial news or stock photography as literal pixels unless usage is authorised.
- Official logos may be used for identification only where applicable law and the owner's published trademark/brand terms permit it; keep the context editorial and do not imply endorsement.
- Check the source owner's trademark, brand-asset, media-use, and data-reproduction terms when available. Entity-specific terms override this generic workflow.
- Record required attribution, backlink, licence text, or permission status in the source ledger and final publishing notes.
- Respect licence attribution requirements for CC assets.
- For exchange/index data, check whether names, marks, screenshots, and numeric data have separate rules. A page may allow factual citation while restricting logo or trademark use.
- Treat `editorial-reference-only` as guidance, not as a reusable foreground photo.
- Treat `unknown-do-not-ship` as blocked.

When rights are unclear, downgrade in this order:

1. exact official logo plus generated environment;
2. official screenshot/document inside a generated frame, if editorial use is appropriate;
3. plain text identity chip plus abstract market scene;
4. fully abstract scene with no claimed real-world depiction.

## 7. Topic examples

### Moscow Exchange / MOEX

For a post about the Moscow Exchange or the MOEX Russia Index, search for:

- the current official Moscow Exchange logo/wordmark from `moex.com`;
- a current official index page or chart tied to the stated date and metric;
- official/authorised imagery of the exchange building, trading infrastructure, or event screen when available.

For a post about market growth, a good bundle is: exact MOEX identity anchor + real official chart/screen showing the relevant move + Birzhevik style references. A generic upward arrow and a generic refinery without MOEX identity fail this gate.

### Public company

Use its current official logo plus one defining real asset: product, store, factory, aircraft, mine, vessel, data centre, app, executive, or investor-presentation chart. Do not substitute a generic industry object when a verified defining asset exists.

### Central bank or regulator

Use the official institution identity plus the real decision page, report cover, press-conference setting, or building. Do not generate fake banknotes, seals, signatures, or policy documents.

### Commodity or sector

If the post names only a broad commodity, use a real, non-branded physical reference or a verified market chart. If it names a company or facility, add that exact identity instead of a generic refinery, mine, or pipeline.

### Technology product or platform

Use the official product logo and a current official UI/product screenshot. Do not generate fake interface controls, repository stats, or feature screens.

## 8. Prompt block

Add this block to the generation prompt:

```text
Topic grounding:
Reference <N> is the verified real-world identity anchor for <entity>, sourced from <official/licensed source>. Preserve its defining identity exactly. Reference <N+1> is factual evidence for <claim/date>; keep its data literal and do not redraw or invent labels. Integrate the topic anchor organically into <sign/screen/facade/product/document surface> while Birzhevik references control palette, typography, lighting, and composition. Do not merge, restyle, or confuse the two brands.
```

## 9. Final QA

Reject or refine when:

- the headline names a real subject but the image contains only generic scenery;
- the topic logo is invented, outdated, misspelled, recoloured, or distorted;
- the chosen factory/building/product/person is not verified as the named subject;
- a real chart or screenshot became synthetic or changed its values;
- an intraday peak is shown as a close, or another metric mismatch appears;
- the asset has no source-page provenance;
- the asset rights status is `unknown-do-not-ship`;
- the asset rights status is `permission-required` but the permission was not verified;
- required source attribution, backlink, or licence text is missing from publishing notes;
- the third-party identity overwhelms Birzhevik branding;
- the composition implies endorsement, partnership, or documentary truth that the sources do not support.

The final report should name the topic anchor used and provide its source page when useful. Do not expose local private paths or temporary signed URLs.
