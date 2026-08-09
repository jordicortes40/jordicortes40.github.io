library(bib2df)
library(yaml)
library(stringr)

# --------------------------------------------------
# Configuration
# --------------------------------------------------

bib_file <- "publications.bib"
output_file <- "../data/publications.yaml"

# --------------------------------------------------
# Read BibTeX
# --------------------------------------------------

bib <- bib2df(bib_file)

# --------------------------------------------------
# Helper
# --------------------------------------------------

clean_na <- function(x) {
  x <- as.character(x)
  x[is.na(x)] <- ""
  x[x == "NA"] <- ""
  x
}

# --------------------------------------------------
# Prepare publications
# --------------------------------------------------

publications <- lapply(seq_len(nrow(bib)), function(i) {
  
  authors <- clean_na(bib$AUTHOR[i])
  
  authors <- str_remove(authors, '^c\\(')
  authors <- str_remove(authors, '\\)$')
  authors <- str_replace_all(authors, '",\\s*"', '; ')
  authors <- str_replace_all(authors, '^"|"$', '')
  
  # Format Jordi's name
  authors <- str_replace_all(
    authors,
    fixed("Cortes, J."),
    "Jordi Cortés"
  )
  
  list(
    title = clean_na(bib$TITLE[i]),
    year = as.integer(bib$YEAR[i]),
    authors = authors,
    journal = clean_na(bib$JOURNAL[i]),
    doi = clean_na(bib$DOI[i]),
    url = clean_na(bib$URL[i]),
    volume = if ("VOLUME" %in% names(bib))
      clean_na(bib$VOLUME[i]) else "",
    number = if ("NUMBER" %in% names(bib))
      clean_na(bib$NUMBER[i]) else "",
    pages = if ("PAGES" %in% names(bib))
      clean_na(bib$PAGES[i]) else "",
    shiny = if ("SHINY" %in% names(bib))
      clean_na(bib$SHINY[i]) else "",
    web = if ("WEB" %in% names(bib))
      clean_na(bib$WEB[i]) else "",
    code = if ("CODE" %in% names(bib))
      clean_na(bib$CODE[i]) else "",
    data = if ("DATA" %in% names(bib))
      clean_na(bib$DATA[i]) else ""
  )
  
})

# --------------------------------------------------
# Sort: newest first
# --------------------------------------------------

publications <- publications[
  order(
    sapply(publications, function(x) -x$year)
  )
]

# --------------------------------------------------
# Write YAML
# --------------------------------------------------

yaml::write_yaml(
  publications,
  output_file
)

cat("Generated:", output_file, "\n")
cat("Publications:", length(publications), "\n")
