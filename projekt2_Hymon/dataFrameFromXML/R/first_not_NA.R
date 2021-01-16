#' First not NA element in a set
#'
#' This function goes through the list of elements as long as NA occurs.
#' If the first element from the list is not an NA It won't go further.
#'
#' @param x List.
#' @return single value
#' @export
firstNotNA = function(x) for(i in 1:length(x)) if(!is.na(x[i])) return(x[i])
