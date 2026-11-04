
# Falko Georgetown L2 Annotation Audit

Corpus: Falko Georgetown L2 v1.0
ANNIS corpus: FalkoGeorgetownL2v1.0
Format: ANNIS CSV exports
Audit date: 2026-11-04
Status: Provisionally eligible

## Data availability

- Corpus accessible through the HU Berlin ANNIS interface.
- 92 documents and 78,151 tokens.
- Article–noun and correction annotation exports obtained.
- 28 candidate learner IDs inferred from document naming patterns.
- Original exports and derived audit files stored privately in Box.

This dataset is audited separately from Falko Essay L2 v2.4, which was obtained as individual XLSX workbooks. Participant and text overlap between the two datasets has not been verified.

## Annotation layers

Relevant layers identified:

- Learner tokens: tok
- Lemma: lemma
- Part of speech: pos
- Corrected POS: corrected_pos
- Target corrections: target_hypothesis
- Additional syntactic annotations

Unlike the inspected Falko Essay L2 workbooks, this ANNIS version does not expose the same ZH1 and ZH2 annotation structure.

Gender-specific error categories were not identified.

## Query and export results

| Query | Matches | Documents |
| --- | ---: | ---: |
| pos="NN" | 13,029 | 92 |
| pos="ART" . pos="NN" | 4,122 | 92 |
| target_hypothesis | 7,308 | 72 |
| pos="ART" & target_hypothesis & #1 _=_ #2 | 300 | 61 |

These figures represent annotation matches, not gender-error frequencies.

The adjacent article–noun query yielded 4,122 candidate sequences. This query does not capture all noun phrases, particularly those with intervening adjectives.

## Annotation linkage

The article–noun export includes:

- Article and noun node IDs
- Article and noun surface forms
- Noun lemma and POS
- Document identifiers

The correction export contains 300 article-aligned target-hypothesis annotations.

Linking the exports by article node ID yielded:

- 214 matched correction annotations
- 86 unmatched correction annotations
- No duplicate node-ID pairs in the article–noun export

The unmatched annotations have not been classified.

The ANNIS export parameter `metakeys=annis:doc` successfully retrieved document identifiers for the article–noun dataset.

## Metadata

Metadata inspected for document `12.S3.2106.p`:

| Field | Value |
| --- | --- |
| transcriptionName | 12.S3.2106.p |
| 0:learner_id | 2106 |
| 0:level | 1 |
| 0:semester | S3 |
| 0:exercise | p |
| annis:doc | 12.S3.2106.p |

Learner IDs appear recoverable from document names, but the mapping requires validation across documents.

Proficiency and semester codes have not been interpreted.

## Feasibility assessment

Learner article forms, noun information, target corrections, and document identifiers can be extracted and partially linked.

However, article corrections cannot be equated directly with grammatical-gender errors. Changes may reflect case, number, definiteness, or other grammatical features.

The following remain unvalidated:

- Completeness of correction annotations
- Gender-specific error classification
- Case, number, and gender disambiguation
- Full set of eligible gender-marking opportunities
- Non-adjacent noun phrase extraction
- Learner ID mapping
- Overlap with other Falko datasets
- Corpus licensing and reuse conditions

## Next steps

1. Compare annotation coverage with other candidate corpora.
2. Verify learner identity and possible corpus overlap.
3. Apply corpus-independent gender-coding criteria.
4. Validate eligible gender-marking opportunities if selected for analysis.

No confirmatory analyses were performed.

## Data storage

ANNIS source:
https://korpling.german.hu-berlin.de/falko-suche/

Private storage:
04_Research/L2_German_Gender_Cue_Competition/03_Corpora/Falko_Georgetown_L2/
