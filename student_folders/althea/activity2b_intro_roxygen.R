#' # Linear Regression of RIKZ data

#' ## Preamble 
#' 
#' 

#' Load libraries
#' 

#' Clear environment
#' 
remove(list=ls())

#' ### Step 1. Load data
load(file = "data/processed_data/rikz.Rdata")

#' __________________________________________________________________
#' ### Step 2. Linear **regression**
#' 
#' $\alpha$
#' 
# This is a simple linear regression
lm.out <- lm(Richness~NAP, data = rikz.data)
summary(lm.out)

#' ### Step 3. Plot relationship
#+ rikz, fig.width = 8, fig.height = 5
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)

#' Footer
#' 
#' Session info
devtools::session_info()
#' 
#' ezspin("student_folders/althea/activity2b_intro_roxygen.R", out_dir = "student_folders/althea/reports",fig_dir = "figures",keep_md = FALSE)