# Prism Store Ledger Bench Walkthrough

I use this file as a small checklist before changing the Swift implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | index fit | 192 | ship |
| stress | join width | 95 | hold |
| edge | constraint risk | 182 | ship |
| recovery | plan drift | 187 | ship |
| stale | index fit | 203 | ship |

Start with `stale` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `index fit` against `join width`, not the raw score alone.
