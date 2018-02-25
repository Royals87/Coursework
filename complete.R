complete <- function(directory, id = 1:332) {
	file_list <- list.files(directory, full.names = TRUE)
	dc <- data.frame()
	for (i in id) {
		data <- read.csv(file_list[i])
		comp <- complete.cases(data)
		ncomplete <- nrow(data[comp,])

		dc <- rbind(dc, data.frame("id" = i, "nobs" = ncomplete))						

	}


	dc
}