summary.bab <- function(object, ...){
  cat("Number of iterations       = ", object$startiter - 1, "\n")
  cat("T degrees of freedom       = ", object$tdf, "\n")
  cat("Number of counts           = ", object$n, "\n")
  cat("df                         = ", object$n1, "\n")
  cat("Next update has nosim      = ", object$nosim, "\n")
  cat("Next update has maxiter    = ", object$maxiter, "\n")
  cat("Proportion of valid tables = ", object$perpos, "\n")
  cat("\n")
  
  rval <- as.data.frame(rbind(object$dobs, object$phat, object$mcse))
  rownames(rval) <- c("observed.stat", "pvalue", "mcse")
  colnames(rval) <- object$stat(rowlabels = TRUE)
  rval
}

summary.cab <- function(object,...){
  cat("Number of iterations       = ", object$startiter - 1, "\n")
  cat("T degrees of freedom       = ", object$tdf, "\n")
  cat("Number of counts           = ", object$n, "\n")
  cat("df                         = ", object$n1, "\n")
  cat("Number of batches          = ", object$nobatches, "\n")
  cat("Batchsize                  = ", object$batchsize, "\n")
  cat("Next update has nosim      = ", object$nosim, "\n")
  cat("Proportion of valid tables = ", object$perpos, "\n")
  cat("\n")
  
  rval <- as.data.frame(rbind(object$dobs, object$phat, object$mcse))
  rownames(rval) <- c("observed.stat", "pvalue", "mcse")
  colnames(rval) <- object$stat(rowlabels = TRUE)
  rval
}

