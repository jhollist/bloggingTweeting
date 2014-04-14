#' getData
#' 
#' This funciton retrieves the id and subject of PLoS one papers published
#' +/- x number of days of the publication date of an input DOI and that had at
#' least a singel level 1 subject in common.
#' 
#' @return The function returns a data.frame that includes the DOI of each 
#' publication and the views per day since publication
#' 
#' @param doi: a valid PLoS ONE doi
#' @param day: number of days, plus or minus, of doi publication to retrieve
#' article level metrics.  Defaults to 1.
#' 
#' @export 
#' @examples
#' mydoi<-c("10.1371/journal.pone.0081457")
#' getArticleData(mydoi)

getArticleData<-function(doi,myDays=1){
  mySubjDate<-searchplos(terms='*:*',fields='subject_level_1,publication_date',
                       toquery=list('doc_type:full',paste('id',doi,sep=":")),
                       start=0)
  mySubj<-lapply(mySubjDate$subject_level_1,function(x) strsplit(x,";"))[[1]][[1]]
  myDateRange<-paste("[",
                     ymd(substr(mySubjDate$publication_date,1,10))-days(myDays),
                     "T00:00:00Z TO ", 
                     ymd(substr(mySubjDate$publication_date,1,10))+days(myDays), 
                     "T23:59:59Z]",
                     sep="")
  x<-searchplos(terms="*:*", fields='id,subject_level_1',
                toquery=list('doc_type:full',
                             'cross_published_journal_key:PLoSONE',
                             paste('publication_date',myDateRange,sep=":")),
                start=0)
  xSubj<-lapply(x$subject_level_1,function(x) strsplit(x,";"))
  xSubjInd<-do.call("rbind",lapply(xSubj, function(x) sum(x[[1]]%in%mySubj)>0))
  xID<-x[xSubjInd,]$id
  outList<-vector("list",length(xID))
  for(i in 1:length(xID)){
    myalm<-alm(xID[i],info="detail")$history
    outList[[i]]<-data.frame(doi=xID[i], myalm[myalm$.id =="counter",])
  }
  outputDF<-do.call("rbind",outList)
  return(outputDF[,-2])
}
