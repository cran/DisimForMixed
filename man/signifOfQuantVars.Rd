% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CalcDissim.R
\name{signifOfQuantVars}
\alias{signifOfQuantVars}
\title{Calculate Significance of Quantitative Attributes.}
\usage{
signifOfQuantVars(myDataQuali, myDataQuant)
}
\arguments{
\item{myDataQuali}{A data frame which includes only qualitative variables in columns.}

\item{myDataQuant}{A data frame which includes only quantitative variables in columns.}
}
\value{
A data frame with two columns A and B where A represents variable number and B
represents significane of corresponding variable.
}
\description{
Takes in two data frames where first contains only qualitative attributes and the other
contains only quantitative attributes. Function calculates significance of quantitative
attributes based on the method proposed by Ahmad & Dey (2007).
}
\details{
signifOfQuantVars is an implementtion of the method proposed by Ahmad & Dey (2007)
to calculate the significance of quantitative attributes. Signinficance of an attribute is an
important fact to consider in the process of clustering. To calculate the significance
quantitative attributes are discreized first. These  significace values are used in calculating
distance between any two numeric values of aquantitative attribute. See Ahmad & Dey (2007) for
more datails.
}
\examples{
QualiVars <- data.frame(Qlvar1 = c("A","B","A","C"), Qlvar2 = c("Q","Q","R","Q"))
QuantVars <- data.frame(Qnvar1 = c(1.5,3.2,4.9,5), Qnvar2 = c(4.8,2,1.1,5.8))
SigOfQuant <- signifOfQuantVars(QualiVars, QuantVars)
}
\references{
Ahmad, A., & Dey, L. (2007). A k-mean clustering algorithm for mixed numeric and categorical data. Data & Knowledge Engineering, 63(2), 503-527.
}

