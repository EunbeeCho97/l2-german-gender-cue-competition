# MERLIN Annotation Audit

Corpus: MERLIN v1.2
Format: relANNIS
Audit date: 2026-11-04

## Available Annotation Layers

The `node_annotation.tab` file contains 68 annotation names, including:

- `learner`
- `TH1`, `TH2`
- `TH1Diff`, `TH2Diff`
- `EA_category`
- `G_Morphol_Wrong_type`
- `G_Art_type`
- `tok_lemma`
- `tok_pos`
- `tok_morph_bohnet`

## Morphological Error Annotations

| Category | Annotation records |
|---|---:|
| ambig | 1,788 |
| case | 1,128 |
| gend | 458 |
| numb | 225 |

The counts refer to annotation records, not necessarily unique gender-marking opportunities.

The `EA_category` layer also contains 478 records labeled `G_Agr`. No dedicated agreement subtype was identified in the node annotation names.

## Data Structure

- `node.tab`: token and span information
- `rank.tab`: structural relationships
- `component.tab`: relationship types
- `edge_annotation.tab`: annotations on relationships
- `corpus_annotation.tab`: document and learner metadata, including `_author_id`

## Remaining Checks

- Verify links between learner tokens, target hypotheses, and error annotations.
- Determine whether correct and incorrect gender-marking opportunities can be identified consistently.
- Verify learner identifiers and repeated noun occurrences.
- Assess the feasibility of measuring gender-choice consistency across grammatical contexts.

No confirmatory hypothesis tests were performed as part of this audit.
