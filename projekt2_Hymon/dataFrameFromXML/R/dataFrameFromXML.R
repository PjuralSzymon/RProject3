#' dataFrameFromXML
#'
#' Function creates data.frame from .xml file.
#' It analyzes the content of every column and converts it into one of the types:
#' character, numeric, date.
#'
#' @param xmlFilePath Path to .xml file
#' @return data.frame or warning in case of missing file
#' @export
dataFrameFromXML <- function(xmlFilePath)
{
  if (file.exists(xmlFilePath)==FALSE)
  {
    stop("File on given path don't exists ")
  }
  else
  {
    result <- XML::xmlParse(xmlFilePath)
    nodes <- XML::getNodeSet(result, path = "//row")
    data <-  XML:::xmlAttrsToDataFrame(nodes)
    data <- as.data.frame(lapply(data, convertDataType))
    data
  }
}
