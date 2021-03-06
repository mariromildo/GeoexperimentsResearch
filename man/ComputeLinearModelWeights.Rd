% Copyright (C) 2017 Google, Inc.

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_analysis.R
\name{ComputeLinearModelWeights}
\alias{ComputeLinearModelWeights}
\title{Computes the weights to be used in the weighted linear model used to
estimate ROAS.}
\usage{
ComputeLinearModelWeights(response, power = 2)
}
\arguments{
\item{response}{a vector of the response in the pre period. Length equal to
the number of geos. Must be all nonnegative.}

\item{power}{default power to which 'response' is raised to. Can be
overridden by setting the global option
'geoexperiments.gbr1.weight.power'. Must be nonnegative.}
}
\value{
A vector of weights of the same length as 'response'. Data points
  with response == 0 have weight NA (indicating these need to be taken
  special care of). There is an attribute 'power' corresponding to the
  exponent used.
}
\description{
Computes the weights to be used in the weighted linear model used to
estimate ROAS.
}
\note{
If a component of 'response' tends to infinity, the corresponding
weight tends to 0 (i.e., the corresponding data point is ignored).
}

