corr <- function(directory, threshold = 0) {
	my_list <- list.files(directory, full.names = TRUE)
	result <- vector(mode = "numeric", length = 0)
	for (i in 1:332) {
		data <- read.csv(my_list[i])
		comp <- complete.cases(data)
		ncomplete <- nrow(data[comp,])
		if(ncomplete > threshold) {
			good <- data[comp,]
			crl <- cor(good[["sulfate"]], good[["nitrate"]])
			result <- append(result, crl)
			
		}
	}
	result
}