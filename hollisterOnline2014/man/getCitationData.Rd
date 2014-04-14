\name{getCitationData}
\alias{getCitationData}
\title{getCitationData}
\usage{
getCitationData(pub = "PLoSONE",
  subject1 = "Ecology and environmental sciences")
}
\arguments{
  \item{pub:}{Character string indicating which PLoS
  journal to query. Default is PLoSONE.}

  \item{subject1:}{Character string indicating the level 1
  subject for which to return citations}
}
\value{
The function returns a data.frame that includes article
views, citations, DOI, and publication date
}
\description{
This function retrieves the article views, citations, DOI,
and level 1 subject for PLoS articles published over a
specified date range
}
\examples{
dr<-"2010-1-1T00:00:00Z TO 2010-12-31T23:59:59Z"
getCitationData()
}

