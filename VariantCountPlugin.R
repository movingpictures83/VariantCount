## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)

## --------------------------------------------------------------------------
## ---- message = FALSE------------------------------------------------------
library(TxDb.Hsapiens.UCSC.hg19.knownGene)

dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

input <- function(inputfile) {
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
    pfix = prefix()
  if (length(pfix) != 0) {
     pfix <<- paste(pfix, "/", sep="")
  }
}

run <- function() {}


run <- function() {}

output <- function(outputfile) {
si

## --------------------------------------------------------------------------
#path <- system.file("extdata", package = "SGSeq")
si$file_bam <- file.path(paste(pfix, parameters["bamfiles", 2], sep="/"), si$file_bam)
sgvc_pred4 <- readRDS(paste(pfix, parameters["sgvcpred", 2], sep="/"))
	sgv <- rowRanges(sgvc_pred4)
print(getSGVariantCounts(sgv, sample_info = si))
}

