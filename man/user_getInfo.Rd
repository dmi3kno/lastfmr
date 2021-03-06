% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/user.R
\name{user_getInfo}
\alias{user_getInfo}
\title{Get information about a user profile.}
\usage{
user_getInfo(user, api_key = lastkey)
}
\arguments{
\item{user}{The user to fetch info for.}

\item{api_key}{A Last.fm API key.}
}
\value{
A list of user profile information
}
\description{
Get information about a user profile.
Implementation of last.fm's \emph{user.getInfo} API method
(\url{http://www.last.fm/api/show/user.getInfo}).
}
\examples{
user_getInfo("platyjus")
}
