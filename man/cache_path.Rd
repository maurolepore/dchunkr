% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cache_path.R
\name{cache_path}
\alias{cache_path}
\title{Create a path to the cache directory, ensuring it exists}
\usage{
cache_path(..., cache_dir = rappdirs::user_cache_dir("dchunkr"))
}
\arguments{
\item{...}{character vectors, if any values are NA, the result will also be
NA. The paths follow the recycling rules used in the tibble package,
namely that only length 1 arguments are recycled.}

\item{cache_dir}{Character. A directory for the cache.}
}
\value{
Character. A path.
}
\description{
\code{path()} constructs a relative path, \code{path_wd()} constructs an absolute path
from the current working directory.
}
\examples{
dir <- withr::local_tempfile()
fs::dir_exists(dir)
cache_path("b", cache_dir = dir)
fs::dir_exists(dir)
}
\seealso{
\code{\link[fs:path_home]{path_home()}}, \code{\link[fs:path_package]{path_package()}} for functions to construct paths
relative to the home and package directories respectively.
}
