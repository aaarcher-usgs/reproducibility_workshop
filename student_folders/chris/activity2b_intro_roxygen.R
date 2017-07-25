#' # Linear regression of RIKZ data

#' ## Preamble 
#'
#'

#' ### Load libraries here
#'

#' ### Clear environment
#'
remove(list=ls())

#'______________________________________________________________________________
#' ### Step 1. Load data
load(file = "data/processed_data/rikz.Rdata")

#'______________________________________________________________________________
#' ### Step 2. Linear regression
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
#'ezspin("student_folders/chris/activity2b_intro_roxygen.R", out_dir = "student_folders/chris/reports",fig_dir = "figures",keep_md = FALSE)
