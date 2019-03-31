install.packages("rlang")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Gviz", version = "3.8")


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("BSgenome.Scerevisiae.UCSC.sacCer3", version = "3.8")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("TxDb.Scerevisiae.UCSC.sacCer3.sgdGene", version = "3.8")

library(GenomicRanges)
library(Gviz)
library(BSgenome.Scerevisiae.UCSC.sacCer3)
library(TxDb.Scerevisiae.UCSC.sacCer3.sgdGene)



###Insertion at position 11536 of chromosome III###
txdb = TxDb.Scerevisiae.UCSC.sacCer3.sgdGene

itrack <- IdeogramTrack(genome = "sacCer3", chromosome = "chrIII", fontcolor="black")

gtrack <- GenomeAxisTrack(col = "gray33")

grtrack <- GeneRegionTrack(txdb, genome = "sacCer3", chromosome = "chrIII",
                           name = "Gene Region Track", col = "gray0", 
                           fill = "chartreuse3", shape ="fixedArrow",
                           cex.title=1, fontcolor.group = "black")


ht <- HighlightTrack(trackList = list(grtrack), start = c(11536), width = 1, 
                     chromosome = "chrIII", genome = "sacCer3", 
                     inBackground=FALSE)

plotTracks(list(itrack, gtrack, ht), 
           from = 8900, to = 15000,
           background.panel = "linen", background.title = "forestgreen",
           transcriptAnnotation = "symbol")



###Insertion at position 1331781 of chromosome IV###
txdb = TxDb.Scerevisiae.UCSC.sacCer3.sgdGene

itrack <- IdeogramTrack(genome = "sacCer3", chromosome = "chrIV", fontcolor="black")

gtrack <- GenomeAxisTrack(col = "gray33")

grtrack <- GeneRegionTrack(txdb, genome = "sacCer3", chromosome = "chrIV",
                           name = "Gene Region Track", col = "gray0", 
                           fill = "chartreuse3", shape ="fixedArrow",
                           cex.title=1, fontcolor.group = "black")


ht <- HighlightTrack(trackList = list(grtrack), start = c(1331781), width = 1, 
                     chromosome = "chrIV", genome = "sacCer3", 
                     inBackground=FALSE)

plotTracks(list(itrack, gtrack, ht), from = 1330281, to = 1337281,
           background.panel = "linen", background.title = "forestgreen",
           transcriptAnnotation = "symbol")
