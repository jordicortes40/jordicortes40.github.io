library(bib2df)
library(dplyr)
library(stringr)
library(yaml)


clean_na <- function(x) {
  x[is.na(x)] <- ""
  x[x == ".na.character"] <- ""
  x
}


bib <- bib2df("projects.bib")
str(bib$CATEGORY)
unique(bib$CATEGORY)

projects <- tibble(
  title = clean_na(bib$TITLE),
  year = as.integer(substr(clean_na(bib$YEAR), 1, 4)),
  summary = if ("ABSTRACT" %in% names(bib)) clean_na(bib$ABSTRACT) else "",
  keywords = if ("KEYWORDS" %in% names(bib))
    strsplit(clean_na(bib$KEYWORDS), ";")
  else
    vector("list", nrow(bib)),
  url = if ("URL" %in% names(bib)) clean_na(bib$URL) else "",
  category = if ("CATEGORY" %in% names(bib))
    as.character(unlist(bib$CATEGORY))
  else
    "Other"
)

projects$category <- factor(
  projects$category,
  levels = c(
    "European Project",
    "National Project",
    "Research Network",
    "Research Group",
    "Other"
  )
)

projects <- projects |>
  arrange(category, desc(year))

projects_list <- lapply(seq_len(nrow(projects)), function(i) {
  list(
    title = projects$title[i],
    year = projects$year[i],
    category = projects$category[i],
    summary = projects$summary[i],
    keywords = projects$keywords[[i]],
    url = projects$url[i]
  )
})

yaml::write_yaml(
  projects_list,
  "../data/projects.yaml"
)

cat("Generated data/projects.yaml\n")
