# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script calculates the Value-at-Risk (VaR) of MADEX's log-returns.

# Historical VaR for alpha = 0.05
VaR(log_returns, p=0.95, method="historical")

# Historical VaR for alpha = 0.01
VaR(log_returns, p=0.99, method="historical")

# Gaussian VaR for alpha = 0.05
VaR(log_returns, p=0.95, method="gaussian")

# Gaussian VaR for alpha = 0.01
VaR(log_returns, p=0.99, method="gaussian")