# This document pertains to the [InsectsArctic](https://github.com/hominidae/InsectsArctic) repository.
InsectsArctic is the repository for code that contributed to my MSc and it contains the scripts used to process data collected by Polar Knowledge Canada and ARCBIO in the Kitikmeot region of Nunavut.

These included the collection of insect specimens via Malaise trap, pitfall, pan traps, and hand collection with aspirators or nets.

## Todo:
- Determine dates covered by the data
- Determine communities covered by the data

## File listing:
001_LoadSequencingData.R - Loads the DNA sequencing data from BOLD in FASTA format.\
002_LoadBOLDData.R - Loads data and associated metadata for samples collected in the Kiktmeot from 2018-2022\
003_ProcessBOLDData.R - Loads publicly accessible DNA Barcodes from BOLD from all of Canada \
004_ProcessGBIFData.R -Loads Research Grade Observations from the Global Biodiversity Information Facility, unused. \
005_OwnDataOnly.R - Produces analysis of collected Barcodes by Polar/ARCBIO in the Kitikmeot, mostly graphs and geospatial links. \
006_CompareKitikmeotAgainstOwnData.R -Produces analysis of collected Barcodes from BOLD and compares it against public BOLD data \
007_UniqueCommunityBINMapping.R - \
008_UniqueBINLines.R -\
008_UniqueIntercommunityBINMapping.R -\
009_iNEXT.R -\
010_DistanceBoxplots.R -\
011_DrawMultipleMapsPerBIN.R -\
012_ClimateData.R -\
013_ClimateDataAverage.R -\
