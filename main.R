data <- read.csv("data/aircrashdata.csv")
names(data)

data_filtered <- data[data$Year > 1970, c("Year", "Aircraft.Manufacturer", "Aircraft",
                                 "Location", "Operator", "Ground", "Fatalities..air.",
                                 "Aboard")]
dim(data_filtered)
