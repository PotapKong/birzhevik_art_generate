# Evaluation Set

Use these tasks to test whether the skill creates Birzhevik images that are practical, branded, and visually strong.

## Eval 1: Video Preview

Input: lesson topic `Основы биржевой торговли №212`.

Expected:

- video preview format;
- Birzhevik lockup top-left;
- large white headline;
- short support caption if needed;
- token stack or market object on right;
- dark chart/grid background.

## Eval 2: Podcast Cover

Input: podcast episode `Мысли Биржевика: рынок после ставки`.

Expected:

- microphone hero;
- title readable;
- waveform pill optional;
- dark market background;
- no fake platform UI.

## Eval 3: Market Review

Input: article about weekly stock market overview.

Expected:

- 16:9 cover;
- headline `ЧТО ПРОИСХОДИТ С РЫНКОМ`;
- abstract chart evidence;
- no fake prices/tickers unless supplied.

## Eval 4: Risk Education

Input: post about calculating risk before investment deals.

Expected:

- clean financial infographic or premium token/object cover;
- headline about risk;
- 2-4 cards max if infographic;
- no profit promises.

## Eval 5: Social Header

Input: channel header for Биржевик.

Expected:

- wide banner;
- brand name and subtitle;
- topic chips;
- logo/glass/token object;
- dark blue/cyan palette.

## Eval 6: Named Topic Grounding — Moscow Exchange

Input: current news post stating that the Moscow Exchange Index rose to an intraday peak of 4.5% after a named event.

Expected:

- the current official Moscow Exchange identity is found from or cross-checked against an official `moex.com` source page;
- at least one verified MOEX-specific topic anchor is attached: exact logo/wordmark, official index page/chart, authorised facade/trading-screen image, or another defining official asset;
- the topic anchor is integrated organically into a sign, screen, facade, chart wall, or scene object while Birzhevik controls the overall style;
- a chart used as factual proof preserves its real pixels, date, direction, labels, and metric;
- `4.5%` is described as an intraday peak, not a closing return;
- source-page provenance and rights status are recorded in `_cache/topic-assets/.../sources.md`;
- a generic upward arrow plus generic refinery with no MOEX identity fails;
- a failed generic refinery/arrow cover is not reused as a composition reference because its off-topic hero can contaminate the new generation.

## Eval 7: Named Company Grounding

Input: a post about a named public company's results or product launch.

Expected:

- current official company identity plus one defining real asset such as product, facility, app, document, or presentation chart;
- no generic industry substitute when a verified defining asset exists;
- no invented UI, executive, building, or company logo;
- topic identity remains subordinate to Birzhevik branding and does not imply endorsement.

## Pass Criteria

- The main claim is clear in 2 seconds.
- It reads as Биржевик, not generic trading content.
- One DNA archetype is visible.
- Text is short and readable.
- Every named real-world subject has a verified topic anchor or an explicitly reported fallback.
- Topic-anchor provenance, currency, exact role, and rights status are recorded.
- Real chart/screenshot evidence supports the same instrument, date, unit, and claim and remains literal.
- No fake market data, real-world identity, interface, place, product, person, or documentary scene appears.
- Logo is exact or clearly left for manual placement.
- Critical text and logo are inside safe zones.
