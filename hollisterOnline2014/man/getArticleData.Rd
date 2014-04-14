\name{getArticleData}
\alias{getArticleData}
\title{getData}
\usage{
getArticleData(doi, myDays = 1)
}
\arguments{
  \item{doi:}{a valid PLoS ONE doi}

  \item{day:}{number of days, plus or minus, of doi
  publication to retrieve article level metrics.  Defaults
  to 1.}
}
\value{
The function returns a data.frame that includes the DOI of
each publication and the views per day since publication
}
\description{
This funciton retrieves the id and subject of PLoS one
papers published +/- x number of days of the publication
date of an input DOI and that had at least a singel level 1
subject in common.
}
\examples{
mydoi<-c("10.1371/journal.pone.0081457")
getArticleData(mydoi)
}

