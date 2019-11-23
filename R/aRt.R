# art code
#install.packages(c("devtools", "mapproj", "tidyverse", "ggforce", "Rcpp"))
#devtools::install_github("marcusvolz/mathart")
# devtools::install_github("marcusvolz/ggart")
library(mathart)
library(ggart)
library(ggforce)
library(Rcpp)
library(tidyverse)
points <- mathart::points
result <- kdtree(points)
p <- ggplot() +
  geom_segment(aes(x, y, xend = xend, yend = yend), result) +
  coord_equal() +
  theme(title = element_text("k-d tree by marcusvolz mathart")) +
  xlim(0, 10000) + ylim(0, 10000) +
  theme_blankcanvas(margin_cm = 0)

ggsave("kdtree.png", p, width = 20, height = 20, units = "in")
