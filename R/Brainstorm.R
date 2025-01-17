#library("car")
library("broom")
library("knitr")
library("kableExtra")


#library("gtsummary")
#library("flextable")
#library("gt")
model <- lm(mpg ~ wt + hp, data = mtcars)

summary(model)

glance(model)
test<-tidy(model)

#test<-as.data.frame(test)

set_flextable_defaults(digits = 1)
flextable(test)

kable(test, format = "simple", digits = 4)

gt(test) %>% fmt_number(decimal=3)

test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(full_width = F, html_font = "Cambria")

test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(html_font = "Cambria")

test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(html_font = "Cascadia mono")

test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(html_font = "Cascadia")

test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(html_font = "Arial")

#ubuntu's font
test %>%
  kbl(caption = "Test", digits=4) %>%
  kable_classic(html_font = "Segoe UI")


header <- function(title){
  title <- paste(title)

  cat("\n")
  cat("===============================================================================")
  cat("\n")
  cat(title)
  cat("\n")
  cat("===============================================================================")
  cat("\n")
}

test <- function(){
  i1 <- header("Model Information")
  i2 <- header("Model Fit")

  cat(i1)
  cat(i2)
}

test()


header <- function(model){
  #Step 1: Create a table

  y <- names(model$model)[1]
  curDateTime <- Sys.time()
  method <- "OLS"
  observations <- nrow(model$model)
  data.frame()



  tbl <- glance(model)



}



