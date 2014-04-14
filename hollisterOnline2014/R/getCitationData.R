#' getCitationData
#' 
#' This function retrieves the article views, citations, DOI, and level 1 
#' subject for PLoS articles published over a specified date range 
#' 
#' @return The function returns a data.frame that includes article views, 
#' citations, DOI, and publication date
#' 
#' @param pub: Character string indicating which PLoS journal to query.  
#' Default is PLoSONE.  
#' 
#' @param subject1: Character string indicating the level 1 subject for
#' which to return citations
#' 
#' @export 
#' @examples
#' dr<-"2010-1-1T00:00:00Z TO 2010-12-31T23:59:59Z"
#' getCitationData()



getCitationData<-function(pub = "PLoSONE",
                          subject1 = "Ecology and environmental sciences",
                          date = "2009-1-1T00:00:00Z TO 2009-1-31T23:59:59Z"){
  if(!is.null(date)){
    myDate<-paste("[",date,"]",sep="")
  } else {
    myDate<-NULL
  }
  if(!is.null(pub)){
    myPub<-paste("cross_published_journal_key:",pub,sep="")
  } else {
    myPub<-NULL
  }
  if(!is.null(subject1)){
    mySub<-paste('subject_level_1:"',subject1,'"',sep="")
  } else {
    mySub<-NULL
  } 
  
  x<-searchplos(terms="*:*", fields='id,subject_level_1',
                toquery=list(myPub,mySub,myDate),start=0)
  xID<-x$id
  myalm<-alm(xID,info="summary")
  browser()
  outputDF<-data.frame(do.call("rbind",lapply(myalm,
                                   function(x) cbind(x$doi,x$views,
                                                     x$citations,
                                                     x$publication_date))))
  names(outputDF)<-c("doi","views","citations","publication_date")
  outputDF$views<-as.numeric(outputDF$views)
  outputDF$citations<-as.numeric(outputDF$citations)
  return(outputDF)
}
