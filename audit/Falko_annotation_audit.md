
# Falko Essay L2 Annotation Audit

Corpus: Falko Essay L2 v2.4
Format: XLSX
Audit date: 2026-11-04
Status: Provisionally eligible

## Data availability

- 248 learner-text workbooks available locally.
- Three workbooks inspected.
- Each inspected workbook contains text, meta, and CONLL sheets.
- Separate metadata workbook contains 89 columns.

## Annotation layers

The inspected files contain:

- Learner text: ZH0:ZH0
- Target hypotheses: ZH1:ZH1, ZH2:ZH2
- Target differences: ZH1:ZH1Diff, ZH1:ZH1gposDiff, ZH2:ZH2Diff
- Lemma: ZH1:ZH1lemma
- Part of speech: ZH1:ZH1pos
- Verb-related error annotations: ZHverb:verbfehlertyp_all

Gender-specific error categories were not identified in the inspected workbooks.

## Annotation coverage

Nonempty cell counts from the first 150 rows of three workbooks:

| Annotation | File 1 | File 2 | File 3 |
|---|---:|---:|---:|
| ZH0:ZH0 | 142 | 145 | 146 |
| ZH1:ZH1 | 142 | 145 | 146 |
| ZH1:ZH1Diff | 17 | 18 | 7 |
| ZH1:ZH1gposDiff | 12 | 13 | 10 |
| ZH1:ZH1lemma | 142 | 145 | 146 |
| ZH1:ZH1pos | 142 | 145 | 146 |
| ZH2:ZH2Diff | 28 | 25 | 17 |

These counts indicate annotation coverage, not error frequencies.

## Metadata

Relevant fields identified:

- identifier
- transcriptionName
- ctest
- l1_1
- collectionDate

The relationship between document identifiers and learner identities remains to be verified.

## Feasibility assessment

Learner text, target hypotheses, difference annotations, lemma, POS, and metadata fields are available.

Gender-marking accuracy may be derivable from learner and target forms, but grammatical ambiguity must be addressed.

The following remain unvalidated:

- Token-to-target alignment
- Gender-specific error classification
- Case, number, and gender disambiguation
- Learner-noun linking
- Repeated gender-marking consistency

## Next steps

1. Verify annotation structures across additional workbooks.
2. Determine how learner forms align with target hypotheses.
3. Develop corpus-independent coding rules for gender marking.
4. Validate learner identifiers and repeated noun observations.

No confirmatory analyses were performed.
