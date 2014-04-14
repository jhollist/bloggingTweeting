#' Create Hollister Figure
#' 
#' This function generates the figure showing article level metrics for 
#' Hollister, 2011.
#' 
#' @param doi The doi for the Hollister et al. 2011 paper.  Use this to retrieve
#' article level metrics
#'
#' @references  Hollister JW, Milstead WB, Urrutia MA (2011) Predicting Maximum 
#' Lake Depth from Surrounding Topography. PLoS ONE 6(9): e25764. 
#' doi:10.1371/journal.pone.0025764       
#' @export      

hollisterFig <- function(doi) {
    out <- alm(doi = doi, info = "detail")
    hollistCounts <- out$history[out$history$.id %in% "counter", ]
    ggplot(hollistCounts, aes(x = ymd(dates), y = totals)) + geom_point(colour = "blue", 
        size = 3.5) + geom_segment(arrow = arrow(length = unit(0.3, "cm")), aes(x = ymd("2013-09-15"), 
        xend = ymd("2013-09-15"), y = 1400, yend = 1500), colour = "grey50", size = 1.5) + 
        geom_text(aes(x = ymd("2013-09-01"), y = 1350, label = "Increase in \nonline activity"), 
            colour = "grey50") + ggtitle("Article Views for Hollister, et al. (2011)") + 
        xlab("Date") + ylab("Cumulative Article Views")
} 
