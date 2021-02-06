# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script estimates the parameters of the GEV (Generalized Extreme Value) distribution, the 95% confidence interval of the GEV model parameters and computes the profile log-likelihood from scratch.

# Right tail.
negloglikelihood_1 <- function(theta, x){
  mu <- theta[1]
  sigma <- theta[2]
  xi <- theta[3]
  logL <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-logL)
}

minimization <- optim(par = c(0.01, 0.01, 0.01), negloglikelihood_1, x = sort(yearly_maxima$Rendement), method = 'Nelder-Mead')

# Confidence interval estimation.
negloglikelihood_2 <- function(theta){
  x <- sort(yearly_maxima$Rendement)
  mu <- theta[1]
  sigma <- theta[2]
  xi <- theta[3]
  L <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-L)
}

# Information matrix.
information_matrix <- hessian(negloglikelihood_2, c(minimization$par[1], minimization$par[2], minimization$par[3]))

# Covariance matrix.
covariance_matrix <- solve(information_matrix)

# Standard errors.
se <- sqrt(diag(covariance_matrix))

# 95% lower CI of mu.
lower_mu <- minimization$par[1] - qnorm(0.975)*se[1]

# 95% upper CI of mu.
upper_mu <- minimization$par[1] + qnorm(0.975)*se[1]

# 95% lower CI of sigma.
lower_sigma <- minimization$par[2] - qnorm(0.975)*se[2]

# 95% upper CI of sigma.
upper_sigma <- minimization$par[2] + qnorm(0.975)*se[2]

# 95% lower CI of xi.
lower_xi <- minimization$par[3] - qnorm(0.975)*se[3]

# 95% upper CI of xi.
upper_xi <- minimization$par[3] + qnorm(0.975)*se[3]

# Profile log-likelihood computation.
reparameterized_negloglikelihood.z <- function(theta, z, data){
  sigma <- theta[1]
  xi <- theta[2]
  mu <- z-(sigma/xi)*((-log(1-1/10))^(-xi)-1)
  replogL <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-replogL)
}

z.vec <- seq(0.03, 0.10, length.out=400)
z.profile <- matrix(ncol = 3, nrow = length(z.vec))

colnames(z.profile) = c("sigma", "xi", "NLL")

x <- sort(yearly_maxima$Rendement)

for (i in seq_along(z.vec)) {  
  res<- optim(fn = reparameterized_negloglikelihood.z, par = c(0.1, 0.1), z = z.vec[i], method = "Nelder-Mead", data = x)  
  z.profile[i, ] = c(res$par, res$value)  
}

# Return level.
return_level <- function(mu, sigma, xi, m){
  return_level <- mu + (sigma/xi) * ((-log(1-m^(-1)))^(-xi) - 1)
  return(return_level)
}

r <- return_level(minimization$par[1], minimization$par[2], minimization$par[3], 10)

# Lower returns.
lower_returns <- c()
for(i in 1:length(z.vec)){
if(z.vec[i] < r & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.z(unname(z.profile[, c(1, 2)][i, ]), 
z.vec[i], x)){
   lower_returns <- c(lower_returns, z.vec[i])
}
}

# 95% lower CI of r.
lower_r <- max(lower_returns)

# Upper returns.
upper_returns <- c()
for(i in 1:length(z.vec)){
if(z.vec[i] > r & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.z(unname(z.profile[, c(1, 2)][i, ]), 
z.vec[i], x)){
   upper_returns <- c(upper_returns, z.vec[i])
}
}

# 95% upper CI of r.
upper_r <- min(upper_returns)

# Left tail.
negloglikelihood_1 <- function(theta, x){
  mu <- theta[1]
  sigma <- theta[2]
  xi <- theta[3]
  logL <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-logL)
}

minimization <- optim(par = c(0.01, 0.01, 0.01), negloglikelihood_1, x = sort(-yearly_minima$Rendement), method = 'Nelder-Mead')

# Confidence interval estimation.
negloglikelihood_2 <- function(theta){
  x <- sort(-yearly_minima$Rendement)
  mu <- theta[1]
  sigma <- theta[2]
  xi <- theta[3]
  L <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-L)
}

# Information matrix.
information_matrix <- hessian(negloglikelihood_2, c(minimization$par[1], minimization$par[2], minimization$par[3]))

# Covariance matrix.
covariance_matrix <- solve(information_matrix)

# Standard errors.
se <- sqrt(diag(covariance_matrix))

# 95% lower CI of mu.
lower_mu <- minimization$par[1] - qnorm(0.975)*se[1]

# 95% upper CI of mu.
upper_mu <- minimization$par[1] + qnorm(0.975)*se[1]

# 95% lower CI of sigma.
lower_sigma <- minimization$par[2] - qnorm(0.975)*se[2]

# 95% upper CI of sigma.
upper_sigma <- minimization$par[2] + qnorm(0.975)*se[2]

# 95% lower CI of xi.
lower_xi <- minimization$par[3] - qnorm(0.975)*se[3]

# 95% upper CI of xi.
upper_xi <- minimization$par[3] + qnorm(0.975)*se[3]

# Profile log-likelihood computation.
reparameterized_negloglikelihood.z <- function(theta, z, data){
  sigma <- theta[1]
  xi <- theta[2]
  mu <- z-(sigma/xi)*((-log(1-1/10))^(-xi)-1)
  replogL <- sum(log((1/sigma)*(1+xi*((x-mu)/sigma))^(-1/xi-1)*exp(-(1+xi*((x-mu)/sigma))^(-1/xi))))
  return(-replogL)
}

z.vec <- seq(0.03, 0.10, length.out=400)
z.profile <- matrix(ncol = 3, nrow = length(z.vec))

colnames(z.profile) = c("sigma", "xi", "NLL")

x <- sort(-yearly_minima$Rendement)

for (i in seq_along(z.vec)) {  
  res<- optim(fn = reparameterized_negloglikelihood.z, par = c(0.1, 0.1), z = z.vec[i], method = "Nelder-Mead", data = x)  
  z.profile[i, ] = c(res$par, res$value)  
}

# Return level.
return_level <- function(mu, sigma, xi, m){
  return_level <- mu + (sigma/xi) * ((-log(1-m^(-1)))^(-xi) - 1)
  return(return_level)
}

r <- return_level(minimization$par[1], minimization$par[2], minimization$par[3], 10)

# Lower returns.
lower_returns <- c()
for(i in 1:length(z.vec)){
if(z.vec[i] < r & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.z(unname(z.profile[, c(1, 2)][i, ]), 
z.vec[i], x)){
   lower_returns <- c(lower_returns, z.vec[i])
}
}

# 95% lower CI of r.
lower_r <- max(lower_returns)

# Upper returns.
upper_returns <- c()
for(i in 1:length(z.vec)){
if(z.vec[i] > r & -minimization$value - qchisq(0.95, df=1)/2 > -reparameterized_negloglikelihood.z(unname(z.profile[, c(1, 2)][i, ]), 
z.vec[i], x)){
   upper_returns <- c(upper_returns, z.vec[i])
}
}

# 95% upper CI of r.
upper_r <- min(upper_returns)