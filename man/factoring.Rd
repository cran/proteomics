\name{factoring}
\alias{factoring}
\title{Sample design -- Generating multiple factor designs from one-dimensional factor}
\usage{
  factoring(dwide, cvmat)
}
\arguments{
  \item{dwide}{iTRAQ data in wide format including columns
  corresponding to iTRAQ channels containing their
  intensities.}

  \item{cvmat}{a matrix that hold the information on which
  channel is mapped to which factor.}
}
\description{
  Making a multiple-factor ANOVA from the single channel
  variable of an iTRAQ experiment.
}
\details{
  This function uses a matrix convmat to convert the single
  channel into a full fledged multiple factor ANOVA.
}
\examples{
channels <- c("X113", "X114", "X115", "X116", "X117", "X118", "X119") #, "X121")
typus     <- c(rep(c("A", "B", "C"), each=2), "reference")
treatment <- c(rep(c("I", "II"), 3), "mixed")
convmat   <- data.frame(channels=channels, typus=typus, treatment=treatment)
print(convmat)
\dontrun{factoring(dwide, cvmat=convmat)}
}

