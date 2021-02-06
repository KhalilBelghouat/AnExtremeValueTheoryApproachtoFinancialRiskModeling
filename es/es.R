# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script calculates the Expected Shortfall (ES) of MADEX's log-returns.

# Historical ES for alpha = 0.05
ES(log_returns, p=0.95, method="historical")

# Historical ES for alpha = 0.01
ES(log_returns, p=0.99, method="historical")

# Gaussian ES for alpha = 0.05
ES(log_returns, p=0.95, method="gaussian")

# Gaussian ES for alpha = 0.01
ES(log_returns, p=0.99, method="gaussian")