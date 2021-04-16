#bibliotecas
library(tidyverse)
library(stringr)
library(collapsibleTree)
library(networkD3)
library(readr)
library(dplyr)

# Leia a base de dados
library(readr)
blog_julia <- read_delim("Base de dados/blog_julia.csv", , delim = ";")
View(blog_julia)


blog_julia_tree <- collapsibleTree(
  df = blog_julia,
  hierarchy = paste0("level", 1:5),
  tooltip = TRUE,
  fill = "#64ABC2", 
  width = 1500,
  height = 1000,
  zoomable = TRUE
)
blog_julia_tree