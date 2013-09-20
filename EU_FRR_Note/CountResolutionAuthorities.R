##############
# Descriptives of whether or not the MoF was involved in European resolution
# Christopher Gandrud
# 20 September 2013
##############

library(devtools)

source_gist("https://gist.github.com/christophergandrud/6421551/raw/grepl.sub.R")

Resolution <- read.csv("~/Desktop/BadBanks_SupervisingAuthority_Dataset - RecentBankFailures.csv")

# Unique countries
length(unique(Resolution$Country))

ResSub <- grepl.sub(Resolution, patterns = "MoF", var = "ResponsibleInstitution")

length(unique(ResSub$Country))
