# prism-store-ledger-bench

`prism-store-ledger-bench` explores databases with a small Swift codebase and local fixtures. The technical goal is to develop a Swift command-oriented project for ledger scenarios with layout fixtures, stable geometry snapshots, and fixture-scale datasets.

## Why It Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Prism Store Ledger Bench Review Notes

For a quick review, compare `index fit` with `join width` before reading the middle cases.

## Features

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/prism-store-ledger-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `join width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stale` is the high score at 203; `stress` is the low score at 95.

## Limitations And Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
