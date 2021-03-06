% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrappers.R
\name{prop_test}
\alias{prop_test}
\title{Tidy proportion test}
\usage{
prop_test(
  x,
  formula,
  response = NULL,
  explanatory = NULL,
  p = NULL,
  order = NULL,
  alternative = "two-sided",
  conf_int = TRUE,
  conf_level = 0.95,
  ...
)
}
\arguments{
\item{x}{A data frame that can be coerced into a \link[tibble:tibble]{tibble}.}

\item{formula}{A formula with the response variable on the left and the
explanatory on the right, where an explanatory variable NULL indicates
a test of a single proportion.}

\item{response}{The variable name in \code{x} that will serve as the response.
This is alternative to using the \code{formula} argument. This is an alternative
to the formula interface.}

\item{explanatory}{The variable name in \code{x} that will serve as the
explanatory variable. Optional. This is an alternative to the formula
interface.}

\item{p}{A numeric vector giving the hypothesized null proportion of
success for each group.}

\item{order}{A string vector specifying the order in which the proportions
should be subtracted, where  \code{order = c("first", "second")} means
\code{"first" - "second"}. Ignored for one-sample tests, and optional for two
sample tests.}

\item{alternative}{Character string giving the direction of the alternative
hypothesis. Options are \code{"two-sided"} (default), \code{"greater"}, or \code{"less"}.}

\item{conf_int}{A logical value for whether to report the confidence
interval or not. \code{TRUE} by default, ignored if \code{p} is specified for a
two-sample test.}

\item{conf_level}{A numeric value between 0 and 1. Default value is 0.95.}

\item{...}{Additional arguments for \link[stats:prop.test]{prop.test()}.}
}
\description{
A tidier version of \link[stats:prop.test]{prop.test()} for equal or given
proportions.
}
\examples{
# proportion test for difference in proportions of 
# college completion by respondent sex
prop_test(gss, 
          college ~ sex,  
          order = c("female", "male"))
          
# a one-proportion test for hypothesized null 
# proportion of college completion of .2
prop_test(gss,
          college ~ NULL,
          p = .2)

}
