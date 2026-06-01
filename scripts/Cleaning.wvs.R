mdf <- read.csv("wvs.csv")

str(mdf$Gender)

summary(mdf)

colSums(is.na(mdf))

landen <- unique(mdf$Country.name)
landen

iran_raw <- mdf %>%
  filter(grepl("Iran, Islamic Republic of", Country.name, ignore.case = TRUE))

View(iran_raw)
nrow(iran_raw)

write.csv(iran_raw, "data/iran_raw.csv", row.names = FALSE)
