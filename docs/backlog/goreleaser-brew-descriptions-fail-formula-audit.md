---
worth: maybe
added: 2026-09-06
---
# goreleaser brew descriptions fail FormulaAudit/Desc

`brew style Formula` reports 25 `FormulaAudit/Desc` offenses on nine formulas: cronn, echo-http, mpt,
proxy-cron, spot, sys-agent, tg-spam, unfuck-ai-comments, weblist. Descriptions are over 80 chars, start
with the formula name, start lowercase, or end with a period. Lint only, no runtime warning.

The formulas are GoReleaser output, so an edit here is overwritten at the next release. The fix is the
`brews[].description` field in each project's `.goreleaser.yml`; this item is deleted once a tap-wide
`brew style Formula` shows no `FormulaAudit/Desc` offense.

Surfaced by the tap-wide check after PR #3. The `Sorbet/BlockMethodDefinition` cop on the same formulas
is not tracked: newer GoReleaser emits `define_method` (fya, ralphex, revdiff, spot already do), so it
clears as projects upgrade.
