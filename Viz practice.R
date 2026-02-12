install.packages("readr")
install.packages("tidyverse")
library(tidyverse)
library(modeldata)
install.packages("modeldata")
?ggplot
#data(crickets)
#?crickets
#view(crickets)
data(package = "modeldata")
data("crickets", package = "modeldata")
View(crickets)

#the basic: 
#scatterplot
ggplot(crickets, aes(x=temp,
                     y=rate,
                     color=species)) + 
#the type of viz needed
  geom_point() +
  labs(x="Temperature",
       y="Chrip Rate",
       color = "Species:",
       title="Cricket Chirps",
       caption="Mcd 2009")+
  scale_color_brewer(palette = "Dark2")

#Modifying basic properties of the plot
ggplot(crickets, aes(x=temp,
                     y=rate)) +
  geom_point(color="blue",
             size =2,
             alpha=0.3,
             shape="square") +
  labs(x="Temperature",
       y="Chrip Rate",
       title="Cricket Chirps",
       caption="Mcd 2009")

#learn more abt options for ggplot
#with ?ggpoiny
#adding another layer
ggplot(crickets, aes(x=temp,
                     y=rate)) +
  geom_point() +
#regression line best fit line
  geom_smooth(method = "lm",
              se = FALSE)+
  labs(x="Temperature",
       y="Chrip Rate",
       title="Cricket Chirps",
       caption="Mcd 2009")
ggplot(crickets, aes(x=temp,
                     y=rate,
                     color=species)) + 
  #the type of viz needed
  geom_point() +
  geom_smooth(method = "lm",
              se=FALSE)+
  labs(x="Temperature",
       y="Chrip Rate",
       color = "Species:",
       title="Cricket Chirps",
       caption="Mcd 2009")+
  scale_color_brewer(palette = "Dark2")
