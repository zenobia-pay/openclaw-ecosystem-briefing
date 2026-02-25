# HOW_TO_PLAN_BRIEFING (Primary-Source Mode)

## Goal
Build a briefing site where every claim is traceable to a link and quoted text is verbatim.

## Required rules
1. Primary sources first (post URL, repo URL, project URL).
2. Verbatim quotes only for quoted content (no rewriting user-provided quotes).
3. If exact post URL is missing, include explicit search URL fallback and mark it.
4. Keep data in machine-readable JSON (`sources.json`, `dataset.json`).
5. Expose APIs (`/api/sources`, `/api/dataset`) for downstream automation.

## Build sequence
1. Create dedicated repo + worker (never piggyback on public marketing site).
2. Normalize source entries into `sources.json` with:
   - `cluster`
   - `verbatim`
   - `sourceUrl`
   - optional metadata (`postId`, `date`, `engagement`)
3. Create `dataset.json` with briefing title + sections + strict constraints.
4. Build a plain HTML index that renders quotes and links directly.
5. Deploy and verify live URL + API endpoints.

## Verification checklist
- [ ] Every item has a source URL
- [ ] Verbatim text preserved
- [ ] Topic title exactly matches user prompt
- [ ] APIs return valid JSON
- [ ] Dedicated worker/repo deployed
