% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/commit.r
\name{is_commit}
\alias{is_commit}
\title{Check if object is S4 class git_commit}
\usage{
is_commit(object)
}
\arguments{
\item{object}{Check if object is S4 class git_commit}
}
\value{
TRUE if object is S4 class git_commit, else FALSE
}
\description{
Check if object is S4 class git_commit
}
\examples{
\dontrun{
## Initialize a temporary repository
path <- tempfile(pattern="git2r-")
dir.create(path)
repo <- init(path)

## Create a user
config(repo, user.name="Alice", user.email="alice@example.org")

## Commit a text file
writeLines("Hello world!", file.path(path, "example.txt"))
add(repo, "example.txt")
commit_1 <- commit(repo, "First commit message")

## Check if commit
is_commit(commit_1)
}
}
\keyword{methods}
