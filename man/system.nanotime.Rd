% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/system_nanotime.R
\name{system.nanotime}
\alias{system.nanotime}
\title{Return CPU time that \sQuote{expr} used with sub-milliseconds accuracy.}
\usage{
system.nanotime(expr, gcFirst = TRUE)
}
\arguments{
\item{expr}{Valid R expression to be timed.}

\item{gcFirst}{Logical - should a garbage collection be performed immediately before the timing? Default is TRUE.}
}
\value{
A \code{proc_time} class object, only the \code{elapsed} value is returned, all others are \code{NA}.
}
\description{
Clone of base R \code{system.time} function utilizing accuracy of \code{microbenchmark} package.
}
\note{
The sole purpose of this function is to have a drop-in replacement for \code{system.time}.
 Due to the implementation this function overestimates the runtime of \code{expr}.
 For more accurate timing, please use \code{\link{microbenchmark}}.
}
\examples{
system.time(replicate(10, mad(runif(100))))
system.nanotime(replicate(10, mad(runif(100))))
print(microbenchmark(replicate(10, mad(runif(100)))), unit="s")
}
\author{
Jan Gorecki and Olaf Mersmann
}
\seealso{
\code{\link{get_nanotime}}
}

