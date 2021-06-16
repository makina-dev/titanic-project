library(ggplot2)
library(tidyverse)
t=titanic %>% mutate(pclass=factor(Pclass),Survived=factor(Survived),Sex=factor(Sex),Embarked=factor(Embarked))
glimpse(t)
t %>% ggplot(aes(Survived)) + geom_bar()
prop.table(table(t$Survived))
t %>% ggplot(aes(Survived)) +
  geom_bar() + 
  theme_bw() +
  labs(y = "passenger count",
                    title = "titanic survival rates")
t %>% ggplot(aes(Sex, fill = Survived)) +
  geom_bar() + 
  theme_bw() +
  labs(y = "passenger count",
       title = "titanic survival rates by sex")
t %>% ggplot(aes(pclass, fill = Survived)) +
  geom_bar() + 
  theme_bw() +
  labs(y = "passenger count",
       title = "titanic survival rates by pclass")
t %>% ggplot(aes(Sex, fill = Survived)) +
  facet_wrap(~pclass) +
  geom_bar() + 
  theme_bw() +
  labs(y = "passenger count",
       title = "titanic survival rates by pclass and sex")
t %>% ggplot(aes(Sex, fill = Survived)) +
  facet_grid(~pclass) +
  geom_bar() + 
  theme_bw() +
  labs(y = "passenger count",
       title = "titanic survival rates by pclass and sex")
t %>% ggplot(aes(Age)) +
  geom_histogram(binwidth = 5) + 
  theme_bw() +
  labs(y = "passenger count", x="age(binwidth=5)",
       title = "titanic age distribution")
t %>% ggplot(aes(Age, fill= Survived)) +
  geom_histogram(binwidth = 5) + 
  theme_bw() +
  labs(y = "passenger count", x="age(binwidth=5)",
       title = "titanic survival rates by age")
t %>% ggplot(aes(Survived,Age)) +
  geom_boxplot() + 
  theme_bw() +
  labs(y = "age", x="survived",
       title = "titanic survival rates by age")
t %>% ggplot(aes(Age, fill = Survived)) +
  facet_grid(Sex~pclass) +
  geom_density(alpha = 0.5) + 
  theme_bw() +
  labs(y= "age",x="survived",
       title = "titanic survival rates by Age, pclass and sex")
t %>% ggplot(aes(Age, fill = Survived)) +
  facet_grid(Sex~pclass) +
  geom_histogram(binwidth= 5 ) + 
  theme_bw() +
  labs(y= "age",x="survived",
       title = "titanic survival rates by Age, pclass and sex")

