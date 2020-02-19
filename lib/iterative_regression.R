rm( list=ls() )

data <- mtcars[, c("mpg", "cyl", "disp", "hp", "drat", "wt")]
col10 <- names(data)[-1]

lm.test <- vector("list", length(col10))

for(i in seq_along(col10)){
  lm.test[[i]] <- lm(reformulate(col10[i], "mpg"), data = data)
}

lm.test
summary(lm.test)
