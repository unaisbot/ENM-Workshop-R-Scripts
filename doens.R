install.packages("rinat")
library(rinat)
occ <- get_inat_obs(
  taxon_name = "Hanguana anthelminthica",
  quality = "research",
  maxresults = 10000
)
head(occ)
occ_coord <- occ[, c(
  "scientific_name",
  "latitude",
  "longitude",
  "observed_on"
)]
occ_coord <- occ_coord[
  complete.cases(occ_coord$latitude,
                 occ_coord$longitude),
]
write.csv(
  occ_coord,
  "Hanguana_occurrence.csv",
  row.names = FALSE
)

