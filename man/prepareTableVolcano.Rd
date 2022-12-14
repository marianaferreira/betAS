% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{prepareTableVolcano}
\alias{prepareTableVolcano}
\title{Prepare and return table used for betAS volcano plot (probability of splicing differences as y-axis)}
\usage{
prepareTableVolcano(
  psitable,
  qualtable,
  npoints,
  colsA,
  colsB,
  labA,
  labB,
  basalColor,
  interestColor,
  maxDevTable
)
}
\arguments{
\item{psitable}{PSI table}

\item{qualtable}{Qual table}

\item{npoints}{number of emitted points generated per beta distribution}

\item{colsA}{column indexes for samples in group A}

\item{colsB}{column indexes for samples in group B}

\item{labA}{group A label}

\item{labB}{group B label}

\item{basalColor}{general color for points (events)}

\item{interestColor}{color for highlighted points (events)}

\item{maxDevTable}{(data.frame) reference data frame with maximum increment values per coverage (inc+exc) to avoid emitted values to be artifitially beyond a certain threshold}
}
\value{
data table to be used as ggplot input for plotting
}
\description{
Prepare and return table used for betAS volcano plot (probability of splicing differences as y-axis)
}
\examples{
testTable <- betAS:::testTable
maxDevSimulationN100  <- betAS:::maxDevSimulationN100
psiTable   <- testTable$PSI
qualTable  <- testTable$Qual
testGroups <- list()
testGroups[[length(testGroups)+1]] <- list(name = "GroupA", samples = c("ERR2598266", "ERR2598267", "ERR2598268"), color = "#FF9AA2")
testGroups[[length(testGroups)+1]] <- list(name = "GroupB", samples = c("ERR2598270", "ERR2598307", "ERR2598351"), color = "#FFB7B2")
groupA    <- "GroupA"
groupB    <- "GroupB"
samplesA   <- testGroups[[1]]$samples
samplesB   <- testGroups[[2]]$samples
colsGroupA    <- convertCols(psiTable, samplesA)
colsGroupB    <- convertCols(psiTable, samplesB)
prepareTableVolcano(psitable = psiTable, qualtable = qualTable, npoints = 500, colsA = colsGroupA, colsB = colsGroupB, labA = groupA, labB = groupB, basalColor = "#89C0AE", interestColor = "#E69A9C", maxDevTable = maxDevSimulationN100)
}
