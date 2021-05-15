
library(tmap)
#' Create choropleth map
#'
#' Create a choropleth map from a given dataset using
#' the coloumn of interest
#'
#' @param ds dataset
#' @param c column
#' @param t title
#' @param p palette
#'
#' @return a map
#' @export
#'
#' @examples
#' choroMap(US3, "Bush_pct", ""Percentage vote share for Bush - 2004", "Spectral")
choroMap <- function(ds, c, t, p) {
  tmap::tm_shape(ds) + tmap::tm_polygons(col=c, title = t, palette = p) + tmap::tm_scale_bar(position = c("right", "top"))
}
