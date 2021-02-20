# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script calculates the Generalized Pareto Distribution's Expected Shortfall (GPD ES) of MADEX's log-returns.

# Right tail.

# GPD ES for alpha = 0.01
GPDES <- function(VaRp, xi, sigma, u){
  return((VaRp/(1-xi)) + ((sigma - xi*u)/(1 - xi)))
}

GPD_ES_hat <- GPDES(GPD_VaR_hat, minimization$par[1], minimization$par[2], 0.015)

# Profile log-likelihood computation.
reparameterized_negloglikelihood.ESp <- function(theta, ESp, x){
  xi <- theta[1]
  u <- 0.015
  n <- length(log_returns)
  p <- 0.01
  Nu <- length(x)
  sigma <- (xi*(1-xi)*(ESp-u))/(xi+((n*p)/Nu)^(-xi)-1)
  replogL <- -Nu*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-replogL)
}

ESp.vec <- seq(0.02, 0.07, length.out=400)
ESp.profile <- matrix(ncol = 2, nrow = length(ESp.vec))

colnames(ESp.profile) = c("xi", "NLL")

x <- sort(log_returns)[(length(log_returns) - 225 + 1):length(log_returns)] - 0.015

for (i in seq_along(ESp.vec)) {  
  res <- optim(fn = reparameterized_negloglikelihood.ESp, par = c(0.1), ESp = ESp.vec[i], x = x, method = 'Brent', lower = -0.5, upper = 0.5)  
  ESp.profile[i, ] = c(res$par, res$value)  
}

# Lower GPD ESs.
lower_GPDESs <- c()
for(i in 1:length(ESp.vec)){
if(ESp.vec[i] < GPD_ES_hat & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.ESp(unname(ESp.profile[, c(1)][i]), 
ESp.vec[i], x)){
   lower_GPDESs <- c(lower_GPDESs, ESp.vec[i])
}
}

# 99% lower CI of GPD ES.
lower_GPDES <- max(lower_GPDESs)

# Upper GPD ESs.
upper_GPDESs <- c()
for(i in 1:length(ESp.vec)){
if(ESp.vec[i] > GPD_ES_hat & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.ESp(unname(ESp.profile[, c(1)][i]), 
ESp.vec[i], x)){
   upper_GPDESs <- c(upper_GPDESs, ESp.vec[i])
}
}

# 99% upper CI of GPD ES.
upper_GPDES <- min(upper_GPDESs)

# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script calculates the Generalized Pareto Distribution's Expected Shortfall (GPD ES) of MADEX's log-returns.

# Left tail.

# GPD ES for alpha = 0.01
GPDES <- function(VaRp, xi, sigma, u){
  return((VaRp/(1-xi)) + ((sigma - xi*u)/(1 - xi)))
}

GPD_ES_hat <- GPDES(GPD_VaR_hat, minimization$par[1], minimization$par[2], 0.014)

# Profile log-likelihood computation.
reparameterized_negloglikelihood.ESp <- function(theta, ESp, x){
  xi <- theta[1]
  u <- 0.015
  n <- length(log_returns)
  p <- 0.01
  Nu <- length(x)
  sigma <- (xi*(1-xi)*(ESp-u))/(xi+((n*p)/Nu)^(-xi)-1)
  replogL <- -Nu*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-replogL)
}

ESp.vec <- seq(0.02, 0.07, length.out=400)
ESp.profile <- matrix(ncol = 2, nrow = length(ESp.vec))

colnames(ESp.profile) = c("xi", "NLL")

x <- sort(-log_returns)[(length(log_returns) - 208 + 1):length(log_returns)] - 0.014

for (i in seq_along(ESp.vec)) {  
  res <- optim(fn = reparameterized_negloglikelihood.ESp, par = c(0.1), ESp = ESp.vec[i], x = x, method = 'Brent', lower = -0.5, upper = 0.5)  
  ESp.profile[i, ] = c(res$par, res$value)  
}

# Lower GPD ESs.
lower_GPDESs <- c()
for(i in 1:length(ESp.vec)){
if(ESp.vec[i] < GPD_ES_hat & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.ESp(unname(ESp.profile[, c(1)][i]), 
ESp.vec[i], x)){
   lower_GPDESs <- c(lower_GPDESs, ESp.vec[i])
}
}

# 99% lower CI of GPD ES.
lower_GPDES <- max(lower_GPDESs)

# Upper GPD ESs.
upper_GPDESs <- c()
for(i in 1:length(ESp.vec)){
if(ESp.vec[i] > GPD_ES_hat & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.ESp(unname(ESp.profile[, c(1)][i]), 
ESp.vec[i], x)){
   upper_GPDESs <- c(upper_GPDESs, ESp.vec[i])
}
}

# 99% upper CI of GPD ES.
upper_GPDES <- min(upper_GPDESs)