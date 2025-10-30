
# InsectsArctic-2025
This code is intended for the analysis of DNA Barcoding specimens collected in the Kitikmeot region of Nunavut. It'll require working with whole specimen sequences and metabarcode sequences.

### Older samples (2018-2021)
were submitted to the Barcode of Life Datasystem via the Centre for Biodiversity genomics at the University of Guelph. These are considered whole specimen sequences, as a result they are approximately ~650bp reads of the COI5P DNA barcode region.

### Newer samples (2022-2024)
were processed using a metabarcoding approach which resulted in shorter reads (150bp-400bp) of the COI5P DNA barcode region.

The Metabarcoding data is available via Google Drive via this link: [2022-2024 Metabarcoding results](https://drive.google.com/drive/folders/1BJ3ADx4dtjJ7CCvT_0YDmxkVAyypIod_?usp=drive_link)

Unfortunately, the sequences themselves are not available yet. Once those are available, they can be aligned and matched against the ~650bp DNA barcodes collected from 2018-2022.

For now however, working with the extrapolated identification of species available from the Metabarcoding data can take place. Once the bulk Metabarcoding sequences are made available, the sequences can be aligned to the ~650bp from the whole specimen sequences.

# InsectsArctic
[InsectsArctic](https://github.com/hominidae/InsectsArctic) is the original code written and developed during my MSc at the University of Guelph. Most of the DNA Barcoding specimens from this analysis were from 2018-2019, however some are from periods in between. After 2022, most of the collected malaise trap samples were bulk metabarcoded instead.

# InsectsArctic_2024
[InsectsArctic_2024](https://github.com/hominidae/InsectsArctic_2024) was code developed to produce an analysis of DNA Barcoding data and producing a phylogenetic tree using MrBayes. Bayesian inference of phylogeny relies on computation to generate the most likely evolutionary pathway between genetic sequences. Rather than a brief and quick NJT generating these evolutionary links, MrBayes performs at least 2,000,000 iterations of the same calculation to arrive at a consensus for when a specific mutation or SNP occurred and thus propagated, provided the available sequences are a complete representation of the available data set.
