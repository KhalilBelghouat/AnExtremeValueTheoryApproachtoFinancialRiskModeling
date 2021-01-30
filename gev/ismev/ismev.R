# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script estimates the parameters of the GEV (Generalized Extreme Value) distribution and produces, respectively, the diagnostic plots for the GEV model and the profile log-likelihood for the m year/block return levels using the 'ismev' package.

# Right tail.

# GEV parameter estimation.
gev.fit(sort(yearly_maxima$Rendement))

# GEV model diagnostic plots.
gev.diag(gev.fit(sort(yearly_maxima$Rendement)))

# The profile log-likelihood for the 10 year return levels.
gev.prof(gev.fit(sort(yearly_maxima$Rendement)), m = 10, 0.03, 0.07)

# Left tail.

# GEV parameter estimation.
gev.fit(sort(-yearly_minima$Rendement))

# GEV model diagnostic plots.
gev.diag(gev.fit(sort(-yearly_minima$Rendement)))

# The profile log-likelihood for the 10 year return levels.
gev.prof(gev.fit(sort(-yearly_minima$Rendement)), m = 10, 0.03, 0.1)