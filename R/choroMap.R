#install.packages("tmap")
library(tmap)
choroMap <- function(ds, c, t, p) {
  tm_shape(ds) + tm_polygons(col=c, title = t, palette = p) + tm_style_classic() + tm_scale_bar(position = c("right", "top"))
}
