print.bab <- function(x, ...){
  rval <- as.data.frame(rbind(x$dobs, x$phat, x$mcse))
  rownames(rval) <- c("observed.stat", "pvalue", "mcse")
  colnames(rval) <- x$stat(rowlabels = TRUE)
  print(rval)
}

print.cab <- function(x, ...){
  rval <- as.data.frame(rbind(x$dobs, x$phat, x$mcse))
  rownames(rval) <- c("observed.stat", "pvalue", "mcse")
  colnames(rval) <- x$stat(rowlabels = TRUE)
  print(rval)
}
