# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script extracts the block maxima and the block minima of MADEX's daily log-returns.

data$Séance <- format(as.Date(data$Séance, format = "%d/%m/%Y"), "%Y") 
log_returns_data <- data.frame(Rendement = append(log_returns, NA, after = 0))
MADEX <- cbind(data, log_returns_data)

# The block maxima
yearly_maxima <- aggregate(Rendement ~ Séance, data=MADEX, max)

# The block minima
yearly_minima <- aggregate(Rendement ~ Séance, data=MADEX, min)