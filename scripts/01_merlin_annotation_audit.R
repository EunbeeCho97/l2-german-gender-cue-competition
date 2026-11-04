
# MERLIN v1.2 annotation audit
# Corpus format: relANNIS
# Checks annotation coverage and error categories.

annotation_file <- file.choose()

if (basename(annotation_file) != "node_annotation.tab") {
  stop("Select node_annotation.tab.")
}

data_dir <- dirname(annotation_file)

annotations <- read.delim(
  annotation_file,
  header = FALSE,
  sep = "\t",
  quote = "",
  comment.char = "",
  fill = TRUE,
  colClasses = "character",
  fileEncoding = "UTF-8"
)

if (ncol(annotations) != 4) {
  stop("Unexpected annotation table structure.")
}

names(annotations) <- c(
  "node_id", "namespace", "annotation", "value"
)

# Annotation inventory

layer_counts <- sort(
  table(annotations$annotation),
  decreasing = TRUE
)

layer_inventory <- data.frame(
  annotation = names(layer_counts),
  count = as.integer(layer_counts),
  row.names = NULL
)

cat("\nAnnotation layers\n")
print(layer_inventory, row.names = FALSE)
cat("\nUnique layers:", nrow(layer_inventory), "\n")

# Layers relevant to the study

target_layers <- c(
  "learner",
  "TH1",
  "TH2",
  "TH1Diff",
  "TH2Diff",
  "EA_category",
  "error",
  "G_Morphol_Wrong_type",
  "G_Art_type",
  "tok_lemma",
  "tok_pos",
  "tok_morph_bohnet"
)

layer_check <- data.frame(
  annotation = target_layers,
  available = target_layers %in% names(layer_counts),
  count = as.integer(layer_counts[target_layers]),
  row.names = NULL
)

layer_check$count[is.na(layer_check$count)] <- 0L

cat("\nRelevant annotation layers\n")
print(layer_check, row.names = FALSE)

# Error categories

error_layers <- c(
  "G_Morphol_Wrong_type",
  "G_Art_type",
  "EA_category"
)

for (layer in error_layers) {
  values <- annotations$value[
    annotations$annotation == layer
  ]

  counts <- sort(table(values), decreasing = TRUE)

  cat("\n", layer, "\n", sep = "")
  print(counts)
  cat("Total:", sum(counts), "\n")
}

# Agreement annotations

agreement_nodes <- unique(
  annotations$node_id[
    annotations$annotation == "EA_category" &
    annotations$value == "G_Agr"
  ]
)

agreement_layers <- sort(
  table(
    annotations$annotation[
      annotations$node_id %in% agreement_nodes
    ]
  ),
  decreasing = TRUE
)

cat("\nAgreement errors\n")
cat("G_Agr nodes:", length(agreement_nodes), "\n")
print(agreement_layers)

agreement_names <- unique(
  annotations$annotation[
    grepl("Agr|Agree|Agreement",
          annotations$annotation,
          ignore.case = TRUE)
  ]
)

cat("\nAgreement-specific layers\n")
print(agreement_names)

# relANNIS table structure

structural_tables <- c(
  "component",
  "rank",
  "edge_annotation",
  "node",
  "corpus_annotation"
)

table_check <- do.call(
  rbind,
  lapply(structural_tables, function(x) {
    path <- file.path(data_dir, paste0(x, ".tab"))
    exists <- file.exists(path)

    n_columns <- NA_integer_

    if (exists) {
      first_line <- readLines(
        path,
        n = 1,
        warn = FALSE,
        encoding = "UTF-8"
      )

      if (length(first_line) > 0) {
        n_columns <- length(
          strsplit(first_line, "\t", fixed = TRUE)[[1]]
        )
      }
    }

    data.frame(
      table = x,
      available = exists,
      columns = n_columns
    )
  })
)

cat("\nStructural tables\n")
print(table_check, row.names = FALSE)

# Metadata field names only

metadata_file <- file.path(
  data_dir, "corpus_annotation.tab"
)

metadata_keys <- character()

if (file.exists(metadata_file)) {
  con <- file(metadata_file, open = "r", encoding = "UTF-8")

  repeat {
    lines <- readLines(con, n = 50000, warn = FALSE)
    if (length(lines) == 0) break

    fields <- strsplit(lines, "\t", fixed = TRUE)

    keys <- vapply(
      fields,
      function(x) if (length(x) >= 3) x[3] else NA_character_,
      character(1)
    )

    metadata_keys <- union(
      metadata_keys,
      keys[!is.na(keys)]
    )
  }

  close(con)
}

cat("\nMetadata fields\n")
print(sort(metadata_keys))

# Preliminary feasibility checks

has_layer <- function(x) {
  x %in% names(layer_counts)
}

has_gender_error <- any(
  annotations$annotation == "G_Morphol_Wrong_type" &
  annotations$value == "gend"
)

feasibility <- data.frame(
  feature = c(
    "Learner text",
    "Target hypothesis",
    "Error annotations",
    "Gender-related error annotation",
    "Lemma",
    "Morphological tags",
    "Learner ID metadata field",
    "Token-target alignment",
    "Repeated learner-noun observations",
    "Gender accuracy extraction"
  ),
  status = c(
    has_layer("learner"),
    has_layer("TH1"),
    has_layer("EA_category"),
    has_gender_error,
    has_layer("tok_lemma"),
    has_layer("tok_morph_bohnet"),
    "_author_id" %in% metadata_keys,
    NA,
    NA,
    NA
  )
)

cat("\nFeasibility checks\n")
print(feasibility, row.names = FALSE, na.print = "Not tested")

cat("\nCounts refer to annotation records, not unique gender-marking opportunities.\n")
cat("Alignment and extraction procedures require further validation.\n")
cat("No confirmatory analyses were performed.\n")

rm(annotations)
gc(verbose = FALSE)
