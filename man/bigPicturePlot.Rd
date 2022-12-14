% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{bigPicturePlot}
\alias{bigPicturePlot}
\title{Density plots grid of all PSI values per sample}
\usage{
bigPicturePlot(table)
}
\arguments{
\item{table}{PSI table}
}
\value{
ggplot density plot grid
}
\description{
Density plots grid of all PSI values per sample
}
\examples{
testTable <- betAS:::testTable
psiTable   <- testTable$PSI
bigPicturePlot(table = psiTable)
}
