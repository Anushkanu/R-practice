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

#scatter plot
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

#learn more about options for ggplot
#with ?gg_point
#adding another layer
ggplot(crickets, aes(x=temp,
                     y=rate)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE)+
  labs(x="Temperature",
       y="Chrip Rate",
       title="Cricket Chirps",
       caption="Mcd 2009")

#with colors
ggplot(crickets, aes(x=temp,
                     y=rate,
                     color=species)) + 
  geom_point() +
  geom_smooth(method = "lm",
            se=FALSE)+
  labs(x="Temperature",
       y="Chrip Rate",
       color = "Species:",
       title="Cricket Chirps",
       caption="Mcd 2009")+
  scale_color_brewer(palette = "Dark2")

#other plots
ggplot(crickets, aes(x=rate))+
  geom_histogram(bins=15) #one quantitative variable

ggplot(crickets, aes(x=rate))+
  geom_freqpoly(bins=15)

ggplot(crickets, aes(x=species)) +
  geom_bar(color="pink",
           fill="lightblue")

ggplot(crickets, aes(x=species, 
                     fill=species))+
  geom_bar()+
  scale_fill_brewer(palette = "Dark2")

ggplot(crickets, aes(x=species,
                     y=rate,
                     color=species))+
  geom_boxplot(show.legend = FALSE) +
  scale_color_brewer(palette="Dark2")+
  theme_classic()

#faceting

#not great way:
ggplot(crickets, aes(x=rate,
                     fill=species))+
  geom_histogram()+
  scale_fill_brewer(palette = "Dark2")

ggplot(crickets, aes(x=rate,
                     fill=species))+
  geom_histogram(bins=15)+
  facet_wrap(~species)+
  scale_fill_brewer(palette = "Dark2")
?facet_wrap

ggplot(crickets, aes(x=rate,
                     fill=species))+
  geom_histogram(bins=15)+
  facet_wrap(~species,
             ncol=1)+
  scale_fill_brewer(palette = "Dark2")
