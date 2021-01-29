# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script extracts the log-returns of the MADEX time series.

# Loading the data.
data <- read.csv("MADEX.csv")

# Extracting the log-returns.
log_returns <- diff(log(data$Instrument))