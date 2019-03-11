#' Function to Calculate Mean
#'
#' Some description of this function
#' @param x A numerical vector
#' @param na.rm = TRUE
#' @return This function returns the mean of a numerical vector
#' @export
#' @examples
#' x <- c(2, 4, 6, 8)
#' mymean(x)


mymean <- function(x, na.rm = F){
  if(!is.numeric(x)){
    warning("X is not numeric. Returning NA")
    return(NA)
  }
  if(na.rm){
    x2 <- x[!is.na(x)]
  }
  else{
    x2 <- x
  }
  mean(x2)
}
