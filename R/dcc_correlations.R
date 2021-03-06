#' This function get the correlation matrix (Rt) of estimated DCC-GARCH model.
#' @param param DCC-GARCH parameters(alpha,beta)
#' @param stdresids matrix of standrdized(De-GARCH) residual returns  (T by N)
#' @param uncR unconditional correlation matrix of stdresids  (N by N)
#' @param ts ts how many time series are you taking
#'
#' @return the correlation matrix (Rt) of estimated DCC-GARCH model (T by N^2)
#' @note Rt are vectorized values of the conditional correlation matrix(Rt) until time t(ts) for each row.
#' @export

dcc_correlations <- function(param, stdresids, uncR, ts){
  nobs <- dim(stdresids)[1]
  ndim <- dim(stdresids)[2]

  tmp<-dcc_construct(param[1], param[2], stdresids, uncR, nobs, ndim, ts)
  result<-tmp[1:ts,]
  return(result)
  
}
