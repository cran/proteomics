\name{adjustBy}
\alias{adjustBy}
\title{Adjust for confounding -- Generic function for centring data}
\usage{
  adjustBy(dwide, effect, ch)
}
\arguments{
  \item{dwide}{iTRAQ data in wide format.}

  \item{effect}{estimated effects which may yield to
  confounding.}

  \item{ch}{names of the channel columns.}
}
\description{
  This function calculates from given adjusting factors
  that compensate for possible confounding due the
  transformed values for the statistical analysis.
}
\details{
  Can be used to perfome custom adjustments.  (Code not
  used anymore.)
}

