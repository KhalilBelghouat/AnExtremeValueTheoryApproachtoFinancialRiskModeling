# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# This script estimates the parameters of the GPD (Generalized Pareto Distribution) and their confidence intervals from scratch.

# Right tail.
negloglikelihood_1 <- function(theta, x){
  xi <- theta[1]
  sigma <- theta[2]
  n <- length(x)
  logL <- -n*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-logL)
}

minimization <- optim(par = c(0.1, 0.1), negloglikelihood_1, x = sort(log_returns)[(length(log_returns) - 225 + 1):length(log_returns)] - 0.015, method = 'Nelder-Mead')

# Confidence interval estimation.
negloglikelihood_2 <- function(theta){
  x <- sort(log_returns)[(length(log_returns) - 225 + 1):length(log_returns)] - 0.015
  xi <- theta[1]
  sigma <- theta[2]
  n <- length(x)
  logL <- -n*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-logL)
}

# Information matrix.
information_matrix <- hessian(negloglikelihood_2, c(minimization$par[1], minimization$par[2]))

# Covariance matrix.
covariance_matrix <- solve(information_matrix)

# Standard errors.
se <- sqrt(diag(covariance_matrix))

# 95% lower CI of xi.
lower_xi <- minimization$par[1]  - qnorm(0.975)*se[1]

# 95% upper CI of xi.
upper_xi <- minimization$par[1]  + qnorm(0.975)*se[1]

# 95% lower CI of sigma.
lower_sigma <- minimization$par[2]  - qnorm(0.975)*se[2]

# 95% upper CI of sigma.
upper_sigma <- minimization$par[2]  + qnorm(0.975)*se[2]

# Left tail.
negloglikelihood_1 <- function(theta, x){
  xi <- theta[1]
  sigma <- theta[2]
  n <- length(x)
  logL <- -n*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-logL)
}

minimization <- optim(par = c(0.1, 0.1), negloglikelihood_1, x = sort(-log_returns)[(length(-log_returns) - 208 + 1):length(-log_returns)] - 0.014, method = 'Nelder-Mead')

# Confidence interval estimation.
negloglikelihood_2 <- function(theta){
  x <- sort(-log_returns)[(length(-log_returns) - 208 + 1):length(-log_returns)] - 0.014
  xi <- theta[1]
  sigma <- theta[2]
  n <- length(x)
  logL <- -n*log(sigma) - (1/xi + 1)*sum(log(1 + (xi/sigma)*x))
  return(-logL)
}

# Information matrix.
information_matrix <- hessian(negloglikelihood_2, c(minimization$par[1], minimization$par[2]))

# Covariance matrix.
covariance_matrix <- solve(information_matrix)

# Standard errors.
se <- sqrt(diag(covariance_matrix))

# 95% lower CI of xi.
lower_xi <- minimization$par[1]  - qnorm(0.975)*se[1]

# 95% upper CI of xi.
upper_xi <- minimization$par[1]  + qnorm(0.975)*se[1]

# 95% lower CI of sigma.
lower_sigma <- minimization$par[2]  - qnorm(0.975)*se[2]

# 95% upper CI of sigma.
upper_sigma <- minimization$par[2]  + qnorm(0.975)*se[2]