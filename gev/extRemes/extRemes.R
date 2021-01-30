# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script computes the 95% confidence interval of the GEV model parameters using the 'extRemes' package.

# Right tail.
ci(fevd(x = sort(yearly_maxima$Rendement), type = "GEV"), type="parameter")

# Left tail.
ci(fevd(x = sort(-yearly_minima$Rendement), type = "GEV"), type="parameter")