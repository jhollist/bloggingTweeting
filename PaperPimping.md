

Quantifying the effect of online activities on the impact of a paper
====================================================================

### Jeffrey W. Hollister

*Jeffrey W. Hollister ([hollister.jeff@epa.gov](mailto:hollister.jeff@epa.gov)), US EPA, Office of Research and Development, National Health and Environmental Effects Research Lab, Atlantic Ecology Division, Narragansett, RI, 02882*  

Abstract
--------
Citations to peer-reviewed publications are the traditional currency by which researchers advance and the impact of their scholarly output is judged. As such, anything that can be done to enhance visibility, and ultimately increase the citation of published research is likely to be well received.  Increasingly, other forms of scholarly impact are being recognized.  Most notably, the discussion, viewing, downloading, and sharing of research articles through numerous online resources can be tracked and quantified and these values provide a richer, and arguably, a truer sense of the impact of a given piece of schorlarly work than citations alone.  This area is broadly known as Altmetrics.  The purpose of this paper is to examine how Altmetrics, primarily article views, are impacted by increased online activity.  Two papers were used as a case studies.  Additionally, I examined the realtionship between total article views and citation rates.  First, the two case studies, show a marked increase in the total article views after blogging, tweeting, and increasing online activity.  Second, it appears that increased article views are indeed positively associated with citation rates.  This concurs with other published material on the association.  In conclusion, increasing online activity, either generally or targeted towards individual papers, appears to be associated with increased atricle views and eventually could lead to higher citation rates.      

#### Keywords:

Altmetrics; Article Impact; Social Media, Blogging


Introduction
------------

In the last couple of years there have been many studies examining the impact of online activities on science.  The most common actvities are blogging, the use of Twitter, maintenance of personal/research websites, and sharing information via social sites such as Facebook Google +, or GitHub [@Twitter; @Facebook; @Google; @GitHub]. Each of these will likely reach a different audience (e.g. Twitter followers versus research website discoverd via Google search) and result in different interactions regarding scientific papers (e.g. discussions on blogs versus click-throughs to papers on Twitter).  The end result of all these activities; however, is increased visibility for both the scientific products (i.e. published papers) and for the scientist in general.

This has recently been an active area in the literature and several authors have addressed how the use of blogs and the micro-blogging site Twitter can be used by scientists [e.g. @Desai2012; Fausto2012; @Shema2012; @Shuai2012; @Darling2013; @Federer2013; @Fox2012; @Thelwall2013].  Although these authors cover a diverse set of topics and fields, one common thread runs through these papers.  This common thread is that blogging, tweeting, and maintaining an active online persona has a positive impact on the reach and impact of scholarly work.  NEED TO READ THESE AND SEE WHAT THEY SAY.  While there are many reasons to believe that this is indeed the case, little work has been done to quantify how specific online activites effect specific peer-reviewed publications. As increasing online presence and specific marketing of papers via blogs and Twitter requires effort, being able to quantify this effect is important and will help make the case that the effort expended can indeed provide results. 

The traditional measure of scholarly impact is citations of individual articles.  While this indeed tracks the use of research within other scientific endeavors, informing future peer-reviewed publications is not the only impact a given scholarly work can have.  Perhaps a better measure of an articles impact is looking at a broader suite of metrics that, in addition to citations, track how often the paper is viewed, downloaded, and discussed.  The general idea is now referred to as Altmetrics [@Priem2012; @Thelwall2013; @Altmetrics].  NEED MORE STUFF HERE.

The goal of this paper is to attempt to quantify this impact with two separate case studies and provide emprical evidence supporting the assertion that tweeting and blogs increases article views.  More specifically, I had three questions I wished to answer with this project.  First, is the impact of blogging and tweeting about an article born out in the article-level metrics?  Second, does a across the board increase in online activity (blogging, curated research sites, Twitter, Github, personal site, etc.) result in greater interest in existing publications?  Third, are alternative article-level metrics associated with an increased citation rate?

Methods
-------
In order to test the presumption that different mechanisms of online communication and general activity can increase article views, we use two separate case studies.  The first case study is for a recent published paper for which several targeted communications were released [@Milstead2013].  The second

### Targeted communications:


### Increase in online activity:


### Collecting data:
`alm` was used to capture the article level-metrics for the two papers.  Cumulative views were plotted over time.  Occurence of signficant online activities related to the Milstead et al. 2013 and Hollister et al. 2011 papers are indicated on the graph.  This analysis is merely associative and is intended to serve as a data-driven anecdote of the association between online-activity and article views.

### article views and citations:
As both article views and citations increase with time, I attempted to remove this trend by simply regressing views and total citations against time, extracting the residuals from that analysis for both views and total citations and comparing the association between the two sets of residuals.

### Data and Code:  
The data and code to reproduce (with updated metrics) this paper are availble from the US EPA Github account.  Both are disseminated via and R Package and the R Markdown and makefile to recreate this article are also available.

Results and Discussion
----------------------
![Article Views for Milstead et al. (2013).  Annotations on graph indicate that date when blog posts/tweets were published.](figure/milsteadFigure.pdf) 


![Article Views for Hollister et al. (2011).  Annotations on graph indicate the general time frame when online activity (e.g. Blogging, curating bibliographic sites, tweeting, etc.) was initiated.](figure/hollisterFigure.pdf) 


Aside from ego and increased citations what are the benefits, especially from the standpoint of federal researchers for engaging in an online campaign?



This paper looks at two specific case studies of how increased online activity may have resulted in an increase in article views.  Following on that, we also examined the more general relationship between the PLoS ONE article views and citations.  An obvious next step would be to examine the relationship between a more complete suite of altmetrics, such as those captured by ImpactStory, and the traditional measure of impact citations. 

Acknowledgements
----------------

Scott Chamberlain, Bryan Milstead, Betty Kreakie, Kristen Hychka

References
----------
