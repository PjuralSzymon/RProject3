#' isDate
#'
#' This function checks if a given variable is representing some date.
#'
#' @param x (char. type)
#' @return boolen value TRUE/FALSE
#' @examples
#' isDate("ASD")
#' isDate("2016-01-12")
#' @export
isDate = function(x) !is.na(as.Date(as.character(x), tz = 'UTC', format = '%Y-%m-%d'))
