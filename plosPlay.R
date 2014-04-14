library(rplos)
library(RCurl)
library(RJSONIO)
library(XML)
library(plyr)
library(stringr)
library(httr)
library(lubridate)
library(grid)
milst<-plosauthor(terms='Milstead','id,author',toquery = "doc_type:full")
str(milst[2,])
milstDOI<-milst[2,1]
hollistDOI<-milst[1,1]
milstDOI
install.packages("alm")
library(alm)
out <- alm(doi=milstDOI, info="detail")
milstCounts<-out$history[ out$history$.id %in% 'counter' ,]
ggplot(milstCounts,aes(x=ymd(dates),y=totals,color=)) +
  geom_point(colour="blue",size = 3.5) +
  geom_segment(arrow = arrow(length = unit(0.3,"cm")),
               aes(x=ymd("2013-12-02"),xend=ymd("2013-12-03"),y=250, yend = 330),
               colour="grey50",size=1.5) +
  geom_text(aes(x=ymd("2013-12-01"), y=220,
                label="Blog post"),
            colour="grey50") +
  geom_segment(arrow = arrow(length = unit(0.3,"cm")),
               aes(x=ymd("2013-12-04"),xend=ymd("2013-12-04"),y=275, yend = 350),
               colour="grey50",size=1.5) +
  geom_text(aes(x=ymd("2013-12-05"), y=250,label="@EPAresearch\ntweets"),
            colour="grey50")+
  geom_segment(arrow = arrow(length = unit(0.3,"cm")),
               aes(x=ymd("2013-12-06"),xend=ymd("2013-12-05"),y=290, yend = 370),
               colour="grey50",size=1.5) +
  geom_text(aes(x=ymd("2013-12-08"), y=300,label="@EPAresearch\ntweets"),
            colour="grey50")
 
        
out <- alm(doi=hollistDOI, info="detail")
hollistCounts<-out$history[ out$history$.id %in% 'counter' ,]
plot(hollistCounts$totals)


