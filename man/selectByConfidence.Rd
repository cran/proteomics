\name{selectByConfidence}
\alias{selectByConfidence}
\title{Result filtering -- Test for biological effect}
\usage{
  selectByConfidence(res, threshold, foldchange = TRUE)
}
\arguments{
  \item{res}{Result file}

  \item{threshold}{Biologically reasonable threshold}

  \item{foldchange}{Is the threshold given a fold change or
  a log2-fold change.  Default ist TRUE.}
}
\description{
  The result file filtered by contains on the confidence
  intervals.  This function will use these confidence
  intervals to filter out biological irrelevant effects.
}

