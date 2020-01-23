library(tidyverse)
factorial_fn <- function(n){
	if(n <= 1){
		return(1)
	}
	else{
		Sys.sleep(0.1)
		return(n * factorial_fn(n-1))
	}
}

input <- c(1, 10, 20, 50)
times <- map_dbl(input, ~ system.time(a <- factorial_fn(.x))[3])

start <- Sys.time()
factorial_fn(100)
end <- Sys.time()
end - start

df <- tibble(x = input, y = times)
ggplot(df, aes(x, y)) +
	geom_line() +
	labs(x = "Factorial", y = "Seconds") +
	theme_linedraw()