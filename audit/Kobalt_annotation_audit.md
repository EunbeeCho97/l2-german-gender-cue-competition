
# Kobalt Extension Annotation Audit

Corpus: Kobalt Extension
Format: XLSX, CoNLL, R data
Audit date: 2026-11-04
Status: Provisionally eligible

## Data availability

- 108 Excel workbooks available locally
- Three workbooks inspected
- Worksheets: `text`, `meta`
- Additional CoNLL and R data files downloaded

## Relevant annotations

- Learner text: `tok`
- Target hypothesis: `ZH1:ZH1`
- Target differences: `ZH1:ZH1Diff`
- Lemma: `ZH1:ZH1lemma`
- POS: `ZH1:ZH1pos`

No dedicated gender-error annotation was identified
in the sampled Excel files.

## Sample coverage

Nonempty cells in the first 150 rows of three workbooks:

| Annotation | File 1 | File 2 | File 3 |
|---|---:|---:|---:|
| ZH1:ZH1 | 148 | 143 | 143 |
| ZH1:ZH1Diff | 13 | 16 | 44 |
| ZH1:ZH1lemma | 148 | 143 | 143 |
| ZH1:ZH1pos | 148 | 143 | 143 |

These are nonempty annotation cells, not error frequencies.

## Documentation

Shadrova (2019) describes target hypotheses, POS
and lemma annotations, verb classifications, and
dependency annotations.

POS corrections were not comprehensive for pronouns
and modifiers.

The Excel files represent the extension corpus,
whereas the R data object includes the base and
extension corpora. Dataset overlap must be checked.

## Remaining validation

- Learner and document ID mapping
- Gender-specific error coding
- Gender, case, and number disambiguation
- Learner-target alignment
- Gender accuracy extraction
- Repeated learner-noun observations
- Dataset overlap and annotation coverage

No confirmatory analyses were performed.
