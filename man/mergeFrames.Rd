\name{mergeFrames}
\alias{mergeFrames}
\title{Merging multiple experiments}
\usage{
  mergeFrames(files, path, sampledesign)
}
\arguments{
  \item{files}{data frame of file names and corresponding
  ids.}

  \item{path}{leading to the files}

  \item{sampledesign}{data frame of ids, channelnames and
  corresponding barcodes.}
}
\description{
  At the end each channel in each iTRAQ experiment can be
  uniquly identified by a barcode.  If two channels of
  different experiments correspond to the same subject, the
  same barcode may be used and a method of combinig these
  measurments be chosen.
}

