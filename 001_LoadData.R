# Individual data analysis
# Load the mBRAVE data and begin analysis.

# Load the libraries
library(tidyverse)
library(dplyr)

# Load the tsv files
ARCB22E <- read_tsv("mBRAVE data/MBR-ARCB22E.tsv")
ARCBIO19A <- read_tsv("mBRAVE data/MBR-ARCBIO19A.tsv")
ARCBIO19B <- read_tsv("mBRAVE data/MBR-ARCBIO19B.tsv")
ARCBIO19C <- read_tsv("mBRAVE data/MBR-ARCBIO19C.tsv")
ARCBIO19D <- read_tsv("mBRAVE data/MBR-ARCBIO19D.tsv")
ARCBIO19E <- read_tsv("mBRAVE data/MBR-ARCBIO19E.tsv")
ARCBIO19G <- read_tsv("mBRAVE data/MBR-ARCBIO19G.tsv")
ARCBIO19H <- read_tsv("mBRAVE data/MBR-ARCBIO19H.tsv")
ARCBIO20A <- read_tsv("mBRAVE data/MBR-ARCBIO20A.tsv")
ARCBIO20B <- read_tsv("mBRAVE data/MBR-ARCBIO20B.tsv")
ARCBIO20C <- read_tsv("mBRAVE data/MBR-ARCBIO20C.tsv")
ARCBIO20D <- read_tsv("mBRAVE data/MBR-ARCBIO20D.tsv")
ARCBIO20E <- read_tsv("mBRAVE data/MBR-ARCBIO20E.tsv")
ARCBIO21A <- read_tsv("mBRAVE data/MBR-ARCBIO21A.tsv")
ARCBIO22A <- read_tsv("mBRAVE data/MBR-ARCBIO22A.tsv")
ARCBIOF <- read_tsv("mBRAVE data/MBR-ARCBIOF.tsv")
MBR1 <- read_tsv("mBRAVE data/MBR-BBYTMT.tsv")
MBR2 <- read_tsv("mBRAVE data/MBR-NSEQ00044.tsv")
MBR3 <- read_tsv("mBRAVE data/MBR-NSEQ00091.tsv")
MBR4 <- read_tsv("mBRAVE data/MBR-SCYTMT.tsv")

# Analysis of ARCB22E, 4572 objects of 59 variables and notes following after <---
# 001: Sets
# 002: sampleId <-- Critical primary identifier key
# 003: runName
# 004: projectCode
# 005: sampleGroup
# 006: sampleType
# 007: collectionDateEnd
# 008: collectionDateStart
# 009: collectionMethod
# 010: country
# 011: province
# 012: lat <-- Latitude
# 013: lon <-- Longitude
# 014: habitat
# 015: environmentalArea
# 016: season
# 017: medium
# 018: multiplexId
# 019: markerCodes
# 020: pcrReactions
# 021: pcrPrimers
# 022: annealingTemps
# 023: instrument
# 024: lysisMethod
# 025: extractionMethod
# 026: runDate
# 027: runType
# 028: readCount
# 029: traceRunSite
# 030: sequences
# 031: dereplicates
# 032: preclusters
# 033: abundance_rank
# 034: pc_reduce_derep
# 035: pc_reduce_preclust
# 036: dataSize
# 037: id_gaps_mean
# 038: id_overlap_mean
# 039: mean_gc_percent
# 040: mean_length
# 041: pc_sim_mean
# 042: dsCode
# 043: inputMaterials
# 044: referenceLibraries
# 045: phylum
# 046: class
# 047: order
# 048: family
# 049: subfamily
# 050: genus
# 051: species
# 052: bin_uri
# 053: filename
# 054: description
# 055: run_created
# 056: sample_created
# 057: uploadedBy
# 058: fullname
# 059: status

# Now that we know what all these new data looks like, lets combine and strip them down to the data we're interested in.

# Let's call in lil bobby tables and drop some useless columns
table(ARCB22E$Sets)
# Right, so they're all "Default Session Set" which means it's useless for our purposes. Let's strip all the data down by one useless column.
ARCB22E <- ARCB22E[-c(1)]
# Perfect, do the same for every other dataframe as well.
ARCBIO19A <- ARCBIO19A[-c(1)]
ARCBIO19B <- ARCBIO19B[-c(1)]
ARCBIO19C <- ARCBIO19C[-c(1)]
ARCBIO19D <- ARCBIO19D[-c(1)]
ARCBIO19E <- ARCBIO19E[-c(1)]
ARCBIO19G <- ARCBIO19G[-c(1)]
ARCBIO19H <- ARCBIO19H[-c(1)]
ARCBIO20A <- ARCBIO20A[-c(1)]
ARCBIO20B <- ARCBIO20B[-c(1)]
ARCBIO20C <- ARCBIO20C[-c(1)]
ARCBIO20D <- ARCBIO20D[-c(1)]
ARCBIO20E <- ARCBIO20E[-c(1)]
ARCBIO21A <- ARCBIO21A[-c(1)]
ARCBIO22A <- ARCBIO22A[-c(1)]
ARCBIOF <- ARCBIOF[-c(1)]
MBR1 <- MBR1[-c(1)]
MBR2 <- MBR2[-c(1)]
MBR3 <- MBR3[-c(1)]
MBR4 <- MBR4[-c(1)]
# Right-o. We are down to 58 variable columns. Let's continue stripping our data down. There are control sequences that we can get rid of. Basically, anything without a country value.
ARCB22E <- ARCB22E %>%
  drop_na(country)
# Then do the same for all the others as well. We could write a for loop but this is a scripting language. Execute as a script, always be executing like a bash script and not a C/C++ program with needless complications.
# AKA keep commands to quick, concise, and to the point so they can be regular expression changed later if needed.
# The secret to writing great scripts is using Vim later and usng search and replace like so, :%s/old-text-string/new-text-string/g
ARCBIO19A <- ARCBIO19A  %>%
  drop_na(country)
ARCBIO19B <- ARCBIO19B %>%
  drop_na(country)
ARCBIO19C <- ARCBIO19C %>%
  drop_na(country)
ARCBIO19D <- ARCBIO19D %>%
  drop_na(country)
ARCBIO19E <- ARCBIO19E %>%
  drop_na(country)
ARCBIO19G <- ARCBIO19G %>%
  drop_na(country)
ARCBIO19H <- ARCBIO19H %>%
  drop_na(country)
ARCBIO20A <- ARCBIO20A %>%
  drop_na(country)
ARCBIO20B <- ARCBIO20B %>%
  drop_na(country)
ARCBIO20C <- ARCBIO20C %>%
  drop_na(country)
ARCBIO20D <- ARCBIO20D %>%
  drop_na(country)
ARCBIO20E <- ARCBIO20E %>%
  drop_na(country)
ARCBIO21A <-ARCBIO21A %>%
  drop_na(country)
ARCBIO22A <- ARCBIO22A %>%
  drop_na(country)
ARCBIOF <- ARCBIOF %>%
  drop_na(country)
MBR1 <- MBR1 %>%
  drop_na(country)
MBR2 <- MBR2 %>%
  drop_na(country)
MBR3 <- MBR3 %>%
  drop_na(country) # <--------------- This drops the whole data frame. Data has no lat/lon, country, individual samples. Deal with later!
MBR4 <- MBR4 %>%
  drop_na(country)
# Right, so we performed some data sanitization. We'll need to do even more.
# This might seem like it's a needless waste of time, but what we're doing is stripping the data set down to it's most useful core components.
# To that end, there isn't a primary key. AKA a unique key identifier that makes a single datum stand out on it's own, because these are all metabarcoding sequences metadata, the typical 'sampleId' refers to a single bulk sample.
# This is no bueno for any form of basic counting, so we'll have to iterate over each value and give them our own unique identifier that allows each sequence to stand out on it's own.
# For that reason, we're going to combine all the data and save it as it's own dataframe.
df1 <- rbind(ARCB22E,ARCBIO19A)
df2 <- rbind(df1,ARCBIO19B)
df3 <- rbind(df2,ARCBIO19C)
df4 <- rbind(df3,ARCBIO19D)
df5 <- rbind(df4,ARCBIO19E)
df6 <- rbind(df5,ARCBIO19G)
df7 <- rbind(df6,ARCBIO19H)
df8 <- rbind(df7,ARCBIO20A)
df9 <- rbind(df8,ARCBIO20B)
df10 <- rbind(df9,ARCBIO20C)
df11 <- rbind(df10,ARCBIO20D)
df12 <- rbind(df11,ARCBIO20E)
df13 <- rbind(df12,ARCBIO21A)
df14 <- rbind(df13,ARCBIO22A)
df15 <- rbind(df14,ARCBIOF)
df16 <- rbind(df15,MBR1)
df17 <- rbind(df16,MBR2)
df18 <- rbind(df17,MBR3)
df19 <- rbind(df18,MBR4)
rm(df1,df2,df3,df4,df5,df6,df7,df8,df9,df10,df11,df12,df13,df14,df15,df16,df17,df18)
# Make a new combined data frame with all the sequences
ARCBIO <- df19
rm(df19)
# Remove all the old now useless data
rm(ARCB22E,ARCBIO19A,ARCBIO19B,ARCBIO19C,ARCBIO19D,ARCBIO19E,ARCBIO19G,ARCBIO19H,ARCBIO20A,ARCBIO20B,ARCBIO20C,ARCBIO20D,ARCBIO20E,ARCBIO21A,ARCBIO22A,ARCBIOF,MBR1,MBR2,MBR3,MBR4)
# We know have one consolidated data set.
