\name{GeneCard_Symbol_Details}
\alias{GeneCard_Symbol_Details}
\title{
GET DETAILS OF GENE SYMBOLS
}
\description{
Function to get the detailed information of the gene interested
}
\usage{
GeneCard_Symbol_Details(x)
}
\arguments{
  \item{x}{R string of converted gene by function GeneCard_ID_Convert
}
}
\value{
Value return is a dataframe with 7 columns describing the properties of genes
}
\details{
This function works only for the genes with consistent symbols. Please use function GeneCard_ID_Convert first and then apply function GeneCard_Symbol_Details to get the detailed information of the gene.
}
\examples{
## One Gene Details
x = "TRBV14"
GeneCard_Symbol_Details(x)
}
