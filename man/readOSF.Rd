\name{readOSF}
\alias{readOSF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read data from the Open Science Framework
}
\description{
This function first calls \code{\link{getOSFfile}} to download a file from the OSF to a temporary location and then calls an appropriate function to read the data into R (see details).
}
\usage{
readOSF(code, readfun, ...)
}
\arguments{
  \item{code}{
A string indicating either the file link (\code{"https://osf.io/XXXXX/"}) or just the code (in this case \code{"XXXXX"})
}
  \item{readfun}{
The function to use when reading the data. If omitted the function will choose one based on the filetype of the file (see details).
}
  \item{\dots}{
Arguments sent to the read function.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
The result of the read function; typically a data frame.
}
\author{
Sacha Epskamp <mail@sachaepskamp.com>
}
\seealso{
\code{\link{getOSFfile}}
}
\examples{
# Read the Replication Project Psychology master data (https://osf.io/5wup8/):
RPPmaster <- readOSF("5wup8", sheetName = "MASTER", startRow = 5, header = TRUE, stringsAsFactors = FALSE) 
}
