\name{addRetentionAtApex}
\alias{addRetentionAtApex}
\title{Summary statistics -- Calculates retention time statistics at apex}
\usage{
  addRetentionAtApex(dwide, ...)
}
\arguments{
  \item{dwide}{iTRAQ data in wide format}

  \item{...}{Additional arguments passed for ddply}
}
\description{
  Calculates different summary retention time statistics
  for each peptide (a subsequence of a protein including
  post translational modifications).  The idea is that each
  peptide is supposed to have roughly the same retention
  time.
}

