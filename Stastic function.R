# Usual stastic funcion
data("iris")
x <- iris$Sepal.Length
# standard error
sd_self <- function(x) {
  mean_x <- mean(x)
  sum_of_square <- 0
  for(i in 1:length(x)) {
    sum_of_square <- (x[i]-mean_x)^2 + sum_of_square
  }
  return(sqrt(sum_of_square/(length(x)-1)))
}
  