\name{pRetention}
\alias{pRetention}
\title{Plot Retention Time Statistics}
\usage{
  pRetention(rwide)
}
\arguments{
  \item{rwide}{iTRAQ data in wide format with retention
  time information}
}
\description{
  Plot retention times with possible outliers
}
\examples{
\dontrun{
iglobal <- addIonSatistics(pglobal)
rglobal <- addRetentionTimeStatistics(iglobal, .parallel=TRUE)
rglob$outlier <- with(rglob, abs(retention.atApex - retention) > 4)
p <- pRetention(rglobal)

p + geom_point(aes(retention.atApex, retention))
p + geom_point(aes(retention.atApex, retention-retention.atApex))
p + geom_point(aes(ppm, retention-retention.atApex))
p + geom_density(aes(x=ppm), alpha=.242)
}
}

