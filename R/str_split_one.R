#' Split a string into a char vector
#'
#' @param string A character vector with one element
#' @param pattern What to split on
#' @param n Maximum number of pieces to return (default = Inf)
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' str_split_one(string = x, pattern = ",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
