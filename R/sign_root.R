#' Take the nth root of a value, but keep the sign intact
#' @param n root to take(n= 2 would correspond to the square root)
#' @param value value to take the root of
#' @importFrom checkmate assertNumeric
#' @return the nth root of abs(value) with the sign of value
#' @export


sign_root <- function(n, value){
  checkmate::assertNumeric(n)
  checkmate::assertNumeric(value)
  value1 <- abs(value)
  value2 <- value1^(1/n)
  if(value < 0) {
    value2 <- -value2
  }
  return(value2)
}


