#################
# custom plotting

library(ggplot2)

ggplot(mtcars,aes(wt,mpg))+
  geom_point()+
  geom_smooth(method = 'lm')

# What is the difference between these three plots?
ggplot(mtcars,aes(wt,mpg,col = as.factor(cyl)))+
  geom_point()+
  geom_smooth(method = 'lm')

ggplot(mtcars,aes(wt,mpg))+
  geom_point(aes(col = as.factor(cyl)))+
  geom_smooth(method = 'lm')

ggplot(mtcars,aes(wt,mpg))+
  geom_point()+
  geom_smooth(aes(col = as.factor(cyl)), method = 'lm')

# these plots can be manipulated in almost any way
ggplot(mtcars,aes(wt,mpg,col = as.factor(cyl)))+
  geom_point()+
  geom_smooth(method = 'lm', se = FALSE)+
  scale_color_brewer(palette = 'YlOrRd')+
  theme_classic()+
  labs(x = 'Weight (thousands of lbs)',
       y = 'Miles per Gallon',
       color = 'Number of Cylinders',
       title = 'Here is a nice graph')


