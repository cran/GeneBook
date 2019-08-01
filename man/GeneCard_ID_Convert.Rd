\name{GeneCard_ID_Convert}
\alias{GeneCard_ID_Convert}
\title{
GENE ID CONVERT
}
\description{
Function for transferring a single gene or multiple genes to the consistent gene symbols.
}
\usage{
GeneCard_ID_Convert(x)
}
\arguments{
  \item{x}{ An R string. Gene symbol or aliases for the gene
}
}
\details{
The gene conversion is based on the GeneCards Human Gene Database
}
\value{
Value return is a matrix including Previous ID, Symbol and Label. The label tells how accuracy the conversion is
}
\examples{
##  One Gene ID Convert
x = "AD2"
GeneCard_ID_Convert(x)

##  Multiple Gene ID Convert

test_symbol = c("ADAMTS7", "CDKN2BAS",
"SH2B3", "SLC22A3",
"LPAL2", "LPA",
"LDLR", "SMARCA4",
"PHACTR1", "ZC3HC1",
"ABO", "WDR12",
"SORT1", "TCF21",
"RASD1", "PEMT",
"RAI1", "PPAP2B")

as.matrix(test_symbol)->test_symbol

mat_id_convert = c()
for(i in 1:nrow(test_symbol)){
GeneCard_ID_Convert(test_symbol[i])->out
mat_id_convert=rbind(mat_id_convert,out)
}

cbind(test_symbol, mat_id_convert)->test_results
colnames(test_results)<-c("previous_ID","Symbol","Label")
head(test_results)
}


