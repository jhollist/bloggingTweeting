#' Create Milstead figure
#' 
#' This function generates the figure showing article level metrics for 
#' Milstead, 2013.
#' 
#' @param doi The doi for the Milstead et al. 2013 paper.  Use this to retrieve
#' article level metrics
#'
#' @references  Milstead WB, Hollister JW, Moore RB, Walker HA (2013) Estimating
#' Summer Nutrient Concentrations in Northeastern Lakes from SPARROW Load 
#' Predictions and Modeled Lake Depth and Volume. PLoS ONE 8(11): e81457. 
#' doi:10.1371/journal.pone.0081457  
#' @export        

milsteadFig <- function(doi) {
    out <- alm(doi = doi, info = "detail")
    milstCounts <- out$history[out$history$.id %in% "counter", ]
    ggplot(milstCounts, aes(x = ymd(dates), y = totals, color = )) + geom_point(colour = "blue", 
        size = 3.5) + geom_segment(arrow = arrow(length = unit(0.3, "cm")), aes(x = ymd("2013-12-02"), 
        xend = ymd("2013-12-03"), y = 250, yend = 330), colour = "grey50", size = 1.5) + 
        geom_text(aes(x = ymd("2013-12-01"), y = 220, label = "Blog post"), colour = "grey50") + 
        geom_segment(arrow = arrow(length = unit(0.3, "cm")), aes(x = ymd("2013-12-04"), 
            xend = ymd("2013-12-04"), y = 275, yend = 350), colour = "grey50", size = 1.5) + 
        geom_text(aes(x = ymd("2013-12-05"), y = 250, label = "@EPAresearch\ntweets"), 
            colour = "grey50") + geom_segment(arrow = arrow(length = unit(0.3, "cm")), 
        aes(x = ymd("2013-12-06"), xend = ymd("2013-12-05"), y = 290, yend = 370), colour = "grey50", 
        size = 1.5) + geom_text(aes(x = ymd("2013-12-08"), y = 300, label = "@EPAresearch\ntweets"), 
        colour = "grey50")
} 
