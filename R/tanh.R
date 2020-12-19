#' This is the description of the second function.
#' 
#' @title tanh function
#' 
#' @description It is a simple tanh function.
#' 
#' @details you can use this function to caculate and return the tanh values of x.
#' 
#' @param x x is a list, whose element should be best in (-1,1)
#'
#' @return a list of x's size 
#' @examples 
#' \dontrun{
#' x= c(1,2,3,4)
#' rx <- tanh(x)
#' plot(x,rx)
#' }

#' @export

tanh <-function(x) {
  return ((exp(x)-exp(-x))/(exp(x)+exp(-x)))
}