\name{copyLoadings}
\alias{copyLoadings}
\title{Adjust for confounding -- copy loadings from one experiment to another}
\usage{
  copyLoadings(fromWide, toWide)
}
\arguments{
  \item{fromWide}{iTRAQ data in wide format}

  \item{toWide}{iTRAQ data in wide format}
}
\description{
  This is important when analysing enriched samples. Here,
  use the loading averages from the corresponig non-eriched
  sample.
}

