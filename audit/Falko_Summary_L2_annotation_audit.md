
# Falko Summary L2 Annotation Audit

Corpus: Falko Summary L2 v1.2
ANNIS corpus: FalkoSummaryL2v1.2
Format: ANNIS online annotations
Audit date: 2026-11-04
Status: Provisionally eligible

## Data availability

- Corpus accessible through the HU Berlin ANNIS interface.
- 106 documents and 40,638 tokens.
- Queries successfully returned noun and article–noun sequences.
- Full raw corpus not downloaded.
- No analysis-ready dataset extracted.

Falko Summary L1 v1.2 is also available (57 documents; 21,211 tokens), but it was not included in this L2 audit.

## Annotation layers

The inspected ANNIS results contain:

- Learner text: tok, word
- Lemma: lemma
- Part of speech: pos
- Target corrections: target_hypothesis
- Syntactic annotations: matrix-satz, matrix-satz_felder

No validated gender-specific error classification was identified.

## Query results

| Query | Matches | Documents |
| --- | ---: | ---: |
| pos="NN" | 9,101 | 106 |
| pos="ART" . pos="NN" | 3,807 | 106 |

These counts represent search matches rather than eligible gender-marking opportunities.

The adjacent article–noun query does not capture all noun phrase structures.

## Target hypothesis

The target_hypothesis layer was observed in the ANNIS results.

For example, the learner sequence "um den Begriffen" was associated with the correction "die Begriffe".

Correction annotations may involve changes to case, number, definiteness, gender, or other features. They cannot be interpreted directly as gender errors.

The completeness and alignment of target corrections remain unverified.

## Metadata

The inspected document metadata includes:

- identifier
- l1_1
- l2_1
- l2_2
- birthYear
- ctest
- majorSubject
- productionModality
- sex

An example learner identifier was fu002, with Bulgarian (bul) recorded as L1.

The ctest field exists, but proficiency coverage and interpretation have not been established.

## Feasibility assessment

Learner text, noun lemmas, POS, target corrections, and learner metadata are available through ANNIS.

The following remain unvalidated:

- Full learner-text export
- Token-to-target alignment
- Gender-specific error classification
- Case, number, and gender disambiguation
- Eligible gender-marking opportunities
- Learner-noun linking
- Overlap with other Falko datasets
- Corpus licensing and reuse conditions

## Next steps

1. Compare annotation coverage with other candidate corpora.
2. Validate target-correction alignment if selected.
3. Apply the common gender-coding protocol.
4. Confirm learner independence and corpus overlap.

No confirmatory analyses were performed.
