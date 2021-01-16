#' convertDataType
#'
#' Get a list of char. variables and convert them into character,
#' numeric, and date types. The function finds the first, not NA element,
#' checks what is the type of that element (char, num, date),
#' and converts the whole list into this type.
#'
#' @param x list of char. variables
#' @return list of variables with tree types(character,numeric,date)
#' @export
convertDataType <- function(x)
{
  if(isNumeric(firstNotNA(x)))   as.numeric(x)
  else if(isDate(firstNotNA(x))) as.Date(x)
  else x
}
