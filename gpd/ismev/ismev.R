# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script estimates the parameters of the GPD (Generalized Pareto Distribution) and produces the diagnostic plots for the GPD model using the 'ismev' package.

# Right tail.

# GPD parameter estimation.
gpd.fit(sort(log_returns), 0.015)

# GPD model diagnostic plots.
gpd.diag(gpd.fit(sort(log_returns), 0.015))

# Left tail.

# GPD parameter estimation.
gpd.fit(sort(-log_returns), 0.014)

# GPD model diagnostic plots.
gpd.diag(gpd.fit(sort(-log_returns), 0.014))