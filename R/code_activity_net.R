library(tidyr)
library(dplyr)
library(stringr)
library(igraph)
library(ggplot2)
dir = "/home/scastillo/apgyeinformes"
#get file list - your list of files would be different
fileList = list.files(dir, recursive = T, include.dirs = F)
fileList = str_split(fileList, pattern = "\\/")
df <- stringi::stri_list2matrix(fileList, byrow=TRUE)
df = as.data.frame(df)
df <- df %>% 
  filter(!str_detect(V1, "DESCRIPT|NAMESPACE"))

# Plot network
#https://www.r-graph-gallery.com/248-igraph-plotting-parameters.html
g <- graph.data.frame(df, directed = FALSE)
par(mar = c(0, 0, 0, 0))  # Remove unnecessary margins
#plot(g, layout = layout.circle, vertex.size = 8, vertex.label = NA)
#plot(g, layout = layout.circle, vertex.size = 6)
#plot(g, layout = layout.davidson.harel, vertex.size = 6)
#plot(g, layout = layout.gem, vertex.size = 6)
# plot(g, layout = layout.kamada.kawai, vertex.size = 6)
# plot(g, layout = layout.grid.3d, vertex.size = 6)
# plot(g, layout = layout.sphere, vertex.size = 6) 
# par(bg="white") set background
plot(g, layout = layout.star, vertex.size = 6, 
     vertex.color="red",
     edge.color=c("slategrey"),
     vertex.label.font=1, vertex.label.color="gray40")# este
