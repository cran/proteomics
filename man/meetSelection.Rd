\name{meetSelection}
\alias{meetSelection}
\title{Data parsing -- from Proteom Discover v1.4}
\usage{
  meetSelection(dwide, ch, ref)
}
\arguments{
  \item{dwide}{raw data from a PD export.}

  \item{ch}{the column names which hold the reporter ion
  intensities.}

  \item{ref}{the colmun name which holds the reporter ion
  intesities of the reference channel.}
}
\description{
  Has been tested with PD v1.4
}
\details{
  This is a rather neat function that allows to get data
  from an export form the software Proteom Discoverer into
  R and parsed into a reasonable data frame such one can
  work with it. It will also add a few statistics and
  create unique identifiers for all identified peptides.
  You may argue that this functionality alone is worth the
  import of the whole package.
}
\examples{
\dontrun{
bio1 <- read.csv("my-proteome-discoverer-v1.4-export-experiment-1.csv")
bio2 <- read.csv("my-proteome-discoverer-v1.4-export-experiment-2.csv")
run1 <- droplevels(bio1[bio1$Quan.Usage == "Used",])
run2 <- droplevels(bio2[bio2$Quan.Usage == "Used",])
channels <- c("X113", "X114", "X115", "X116", "X117", "X118", "X119", "X121")
reference <- c("X121")

run1 <- meetSelection(run1, channels, reference)
run2 <- meetSelection(run2, channels, reference)

run1$experiment <- factor(1, levels=1:2, labels=c("iTRAQ-1", "iTRAQ-2"))
run2$experiment <- factor(2, levels=1:2, labels=c("iTRAQ-1", "iTRAQ-2"))
runs <- rbind(run1, run2)
}
}

