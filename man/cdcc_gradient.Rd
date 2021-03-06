% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdcc_gradient.R
\name{cdcc_gradient}
\alias{cdcc_gradient}
\title{This functions calculates numerical gradient of log-likelihood of cDCC-GARCH model.}
\usage{
cdcc_gradient(param, ht, residuals, stdresids, uncR, d = 1e-05)
}
\arguments{
\item{param}{cDCC-GARCH parameters(alpha,beta)}

\item{ht}{matrix of conditional variance vectors (T by N)}

\item{residuals}{matrix of residual(de-mean) returns  (T by N)}

\item{stdresids}{matrix of standrdized(De-GARCH) residual returns  (T by N)}

\item{uncR}{unconditional correlation matrix of stdresids  (N by N)}

\item{d}{(log-lik(x+d) - log-lik(x))/d}
}
\value{
numerical gradient of log-likelihood of cDCC-GARCH model(vector)
}
\description{
This functions calculates numerical gradient of log-likelihood of cDCC-GARCH model.
}
