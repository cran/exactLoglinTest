gof <- function(y = NULL, mu = NULL, rowlabels = F){
  if (rowlabels) c("deviance", "Pearson")
  else {
    temp <- y != 0
    c(2 * sum(y[temp] * log(y[temp] / mu[temp])), sum((y - mu) ^ 2 / mu))
  }
}
