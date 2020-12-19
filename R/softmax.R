#' This is the description of the first function.
#' 
#' @title softmax function
#' 
#' @description It is a simple softmax function.
#' 
#' @details you can use this function to caculate and return the softmax values of x.
#' 
#' @param x x is a list
#' 
#' @return a list of x's size 
#' @examples 
#' \dontrun{
#' x= c(1,2,3,4)
#' sx <- softmax(x)
#' plot(x,sx)
#' }

#' @export

softmax <-function(x) {
  return (exp(x)/sum(exp(x)))
}