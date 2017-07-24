#' # Linear regression of RIKZ data

#' Preamble - load libraries and clear environment
remove(list=ls())

#' ## Step 1. Load data
load("data/processed_data/rikz.Rdata")

#' ## Step 2. Linear regression
lm.out <- lm(Richness~NAP, data = rikz.data)
summary(lm.out)

#' ## Step 3. Plot results
#+ rikz_lm, fig.width=8, fig.height=5
plot(rikz.data$NAP, rikz.data$Richness)
abline(lm.out)

#' ### Footer 
#' 
#' Session Information
devtools::session_info()
#' 
ezspin("student_folders/prof_dorkwood/activity2b_intro_roxygen.R", out_dir = "student_folders/prof_dorkwood/reports", fig_dir = "figures", keep_md=F)
