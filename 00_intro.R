#################
# base R

rm(list=ls())
head(mtcars)

plot(mtcars$wt,mtcars$mpg)
# same as
with(mtcars,plot(wt,mpg))