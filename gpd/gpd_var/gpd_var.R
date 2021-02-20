# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script calculates the Generalized Pareto Distribution's Value-at-Risk (GPD VaR) of MADEX's log-returns.

# Right tail.

# GPD VaR for alpha = 0.01
GPDVaR <- function(xi, sigma, u, n, Nu, p){
  return(u + (sigma/xi)*(((n*p)/Nu)^(-xi) - 1))
}

GPD_VaR_hat <- GPDVaR(minimization$par[1], minimization$par[2], 0.015, length(log_returns), 225, 0.01)

# Profile log-likelihood computation.
reparameterized_negloglikelihood.VaRp <- function(theta, VaRp, x){
  xi <- theta[1]
  u <- 0.015
  n <- length(log_returns)
  p <- 0.01
  Nu <- length(x)
  sigma <- ((xi*(VaRp - u))/(((n*p)/Nu)^(-xi) - 1))
  replogL <- -Nu*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-replogL)
}

VaRp.vec <- seq(0.02, 0.07, length.out=400)
VaRp.profile <- matrix(ncol = 2, nrow = length(VaRp.vec))

colnames(VaRp.profile) = c("xi", "NLL")

x <- sort(log_returns)[(length(log_returns) - 225 + 1):length(log_returns)] - 0.015

for (i in seq_along(VaRp.vec)) {  
  res <- optim(fn = reparameterized_negloglikelihood.VaRp, par = c(0.1), VaRp = VaRp.vec[i], x = x, method = 'Brent', lower = -0.5, upper = 0.5)  
  VaRp.profile[i, ] = c(res$par, res$value)  
}

# Lower GPD VaRs.
lower_GPDVaRs <- c()
for(i in 1:length(VaRp.vec)){
if(VaRp.vec[i] < GPD_VaR_hat & -minimization$value - qchisq(0.95, df=1)/2 > -profileloglikelihood.VaRp(unname(VaRp.profile[, c(1)][i]), 
VaRp.vec[i], x)){
   lower_GPDVaRs <- c(lower_GPDVaRs, VaRp.vec[i])
}
}

# 99% lower CI of GPD VaR.
lower_GPDVaR <- max(lower_GPDVaRs)

# Upper GPD VaRs.
upper_GPDVaRs <- c()
for(i in 1:length(VaRp.vec)){
if(VaRp.vec[i] > GPD_VaR_hat & -minimization$value - qchisq(0.95, df=1)/2 > -profileloglikelihood.VaRp(unname(VaRp.profile[, c(1)][i]), 
VaRp.vec[i], x)){
   upper_GPDVaRs <- c(upper_GPDVaRs, VaRp.vec[i])
}
}

# 99% upper CI of GPD VaR.
upper_GPDVaR <- min(upper_GPDVaRs)

# Left tail.

# GPD VaR for alpha = 0.01
GPDVaR <- function(xi, sigma, u, n, Nu, p){
  return(u + (sigma/xi)*(((n*p)/Nu)^(-xi) - 1))
}

GPD_VaR_hat <- GPDVaR(minimization$par[1], minimization$par[2], 0.015, length(log_returns), 208, 0.01)

# Profile log-likelihood computation.
reparameterized_negloglikelihood.VaRp <- function(theta, VaRp, x){
  xi <- theta[1]
  u <- 0.014
  n <- length(log_returns)
  p <- 0.01
  Nu <- length(x)
  sigma <- ((xi*(VaRp - u))/(((n*p)/Nu)^(-xi) - 1))
  replogL <- -Nu*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-replogL)
}

VaRp.vec <- seq(0.02, 0.07, length.out=400)
VaRp.profile <- matrix(ncol = 2, nrow = length(VaRp.vec))

colnames(VaRp.profile) = c("xi", "NLL")

x <- sort(-log_returns)[(length(log_returns) - 208 + 1):length(log_returns)] - 0.014

for (i in seq_along(VaRp.vec)) {  
  res <- optim(fn = reparameterized_negloglikelihood.VaRp, par = c(0.1), VaRp = VaRp.vec[i], x = x, method = 'Brent', lower = -0.5, upper = 0.5)  
  VaRp.profile[i, ] = c(res$par, res$value)  
}

# Lower GPD VaRs.
lower_GPDVaRs <- c()
for(i in 1:length(VaRp.vec)){
if(VaRp.vec[i] < GPD_VaR_hat & -minimization$value - qchisq(0.95, df=1)/2 > -profileloglikelihood.VaRp(unname(VaRp.profile[, c(1)][i]), 
VaRp.vec[i], x)){
   lower_GPDVaRs <- c(lower_GPDVaRs, VaRp.vec[i])
}
}

# 99% lower CI of GPD VaR.
lower_GPDVaR <- max(lower_GPDVaRs)

# Upper GPD VaRs.
upper_GPDVaRs <- c()
for(i in 1:length(VaRp.vec)){
if(VaRp.vec[i] > GPD_VaR_hat & -minimization$value - qchisq(0.95, df=1)/2 > -profileloglikelihood.VaRp(unname(VaRp.profile[, c(1)][i]), 
VaRp.vec[i], x)){
   upper_GPDVaRs <- c(upper_GPDVaRs, VaRp.vec[i])
}
}

# 99% upper CI of GPD VaR.
upper_GPDVaR <- min(upper_GPDVaRs)