# Individual data analysis
# Load the mBRAVE data and begin analysis.

# Load the libraries
library(tidyverse)

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
