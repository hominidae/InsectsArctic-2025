
# InsectsArctic-2025
This code is intended for the analysis of DNA Barcoding specimens collected in the Kitikmeot region of Nunavut.

## Older samples (2018-2021)
were submitted to the Barcode of Life Datasystem via the Centre for Biodiversity genomics at the University of Guelph. These are considered whole specimen sequences, as a result they are approximately ~650bp reads of the COI5P DNA barcode region.

## Newer samples (2022-2024)
were processed using a metabarcoding approach which resulted in shorter reads (150bp-400bp) of the COI5P DNA barcode region.

The Metabarcoding data is available via Google Drive via this link: [2022-2024 Metabarcoding results](https://drive.google.com/drive/folders/1BJ3ADx4dtjJ7CCvT_0YDmxkVAyypIod_?usp=drive_link)

Unfortunately, the sequences themselves are not available yet. Once those are available, they can be aligned and matched against the ~650bp DNA barcodes collected from 2018-2022.

## InsectsArctic
[InsectsArctic](https://github.com/hominidae/InsectsArctic) is the original code written and developed during my MSc at the University of Guelph. Most of the DNA Barcoding specimens from this analysis were from 2018-2019, however some are from periods in between. After 2022, most of the collected malaise trap samples were bulk metabarcoded instead.

Translation: Shorter reads of the COI5P barcode region, but determining presence/absence still possible. What it is still useful for is determining targetted 650bp DNA barcoding. So, sample insects and laboriously DNA barcode COI5P initially to get broad scale reads, then switch to bulk metabarcoding to get representative samples across a wider scale.

Todo:
- Take the output data from the InsectsArctic repository and re-use it in InsectsArctic-2025.
- Objective: Utilize 2018, 2019, 2021, and any years available with ~650bp COI5P DNA sequences
- Analysis: Per year, seperate species present in each community by week across the short summer period.
- Determine approximate emergence point, and reproductive periodicity for each represented species. Repeat for comparison with newer metabarcoding data.
- Due to the shorter reads on COI5P for the bulk metabarcoding data, it's not possible to compare ~650bp against ~650bp between species but more primitive comparisons can be made by each approxiamte area.

To make things simple, we'll list the code in that repository here and it's input and output with a brief description of what the code does.

Repository Directory Listing:
001_LoadSequencingData.R - This is the sequencing data from multiple datasets collected by Polar and ARCBIO in the Kitikmeot.

002_LoadBOLDData.R - This combines the sequencing data with it's associated data/metadata related to it's collection into a single data package.

003_ProcessBOLDData.R - This deals with all publicly available sequencing data from BOLD from across Canada by province/territory. useful later for comparison and drawing links between the Arctic, sub-Arctic, and the rest of Canada.

004_ProcessGBIFData.R - This deals with the Global Biodiversity Information Facility research grade observations. Not used.

005_OwnDataOnly.R - This works with data from scripts 001 and 002. Kitikmeot insect specimens and their DNA barcodes.

006_CompareKitikmeotAgainstOwnData.R - Takes other publicly shared DNA barcodes from BOLD that were collected in the Kitikmeot to compare against own collected data.

007_UniqueCommunityBINMapping.R - Intercommunity comparision within the Kitikmeot by matching BINs.

008_UniqueBINLines.R - Draws a line on a map of Nunavut between matching BINs in Canada from publicly available BOLD specimens.

008_UniqueIntercommunityBINMapping.R - Draws the links between communities in the Kitikmeot to each other.

009_iNEXT.R - Species Accumulation curbes using the Shannon diversity index. Basically, comparing sampling effort and the number of species present over time. Steep curve, high biodiversity. Shallow curve, lower biodiversity.

010_DistanceBoxplots.R - Various boxplots, but comparing house flies and mosquitoes to house flies and mosquitoes and other Nearctic species or synanthropic species means relatively little. Filtering those out, the boxplot would look very different.

011_DrawMultipleMapsPerBIN.R - BIN by BIN comparison map and their links to the rest of Canada.

012_ClimateData.R - Downloads climate data from Environment and Climate Change Canada from the local airports in 1950's to present.

013_ClimateDataAverage.R - Generation of climate averages decade by decade. Warmer winters mean more insects survive diapause or via other overwintering strategies. Colder winters kill more organisms not explicitly adapted for Arctic conditions. 

## InsectsArctic_2024
[InsectsArctic_2024](https://github.com/hominidae/InsectsArctic_2024) was code developed to produce an analysis of DNA Barcoding data and producing a phylogenetic tree using MrBayes. Bayesian inference of phylogeny relies on computation to generate the most likely evolutionary pathway between genetic sequences. Rather than a brief and quick NJT generating these evolutionary links, MrBayes performs at least 2,000,000 iterations of the same calculation to arrive at a consensus for when a specific mutation or SNP occurred and thus propagated, provided the available sequences are a complete representation of the available data set. Roughly anyway, why use more words when few words do trick?

## InsectsArctic_2025
The latest code being developed now which produces an analysis of 2018-2024 DNA barcoding specimen data in the Kitikmeot region.
