# An Extreme Value Theory Approach to Financial Risk Modeling

This repository includes the code used in one of the master's projects **"An Extreme Value Theory Approach to Financial Risk Modeling"** by Khalil Belghouat.

In this project, we apply VaR and ES models, historical as well as parametric, to one of Morocco stock indices, namely, the MADEX index. In addition, we employ extreme value theory in order to model the tail distribution, left and right, of the stock index daily log-returns.

## Prerequisites

While ```R```, version 4.0.3, and its statistical libraries were used to build all applied models. ```Python```, version 3.7.10, and its ```pandas``` library were used to process the data. The ```R``` script _packages.R_ in the _packages_ folder installs and loads all necessary ```R``` packages. 

All operations, from data preprocessing to model estimation, were carried out on the Google Colaboratory platform.

## Theoretical Background

The concepts of uncertainty, risk and volatility arise naturally in many fields of study concerned with decision-making. One area of study in which these concepts have flourished is finance. Although they are closely related, each concept has its own definition. The American economist Frank Knight (Nov. 7, 1885 - Apr. 15, 1972) defined risk as the situation where there is a measure of probability to guide a choice. Whereas he defined uncertainty as the situation in which this measure of probability is unknown due to cognitive or informational constraints. Banks and other financial institutions are exposed to various types of risk, i.e.: credit risk, market risk, foreign exchange risk, volatility risk, liquidity risk, etc. And so a multiplicity of methods and models were put forward in order to identify its sources, measure it, and manage it.

### Value-at-Risk

Recommended by Basel standards on capital requirements for market risks, Value-at-Risk (VaR) is a financial metric that estimates the amount of potential loss that could happen in an investment portfolio over a specified period of time. There are three methods of calculating VaR: the historical method, the variance-covariance (or parametric) method, and the Monte Carlo simulation.

### Expected Shortfall

One of the principal limitations of the VaR model is its inability to adequately accomodate for tail risk. An alternative to VaR that is more sensitive to the shape of the tail of the loss distribution is the Expected Shortfall model (ES) also called Conditional Value-at-Risk (CVaR).

### Extreme Value Theory

Extreme Value Theory (EVT) is a branch of statistics that has found wide application in fields such as hydrology, meteorology, finance and insurance. It is useful in estimating probabilities associated with extremal events and modeling their impact. EVT employs two different modelling approaches: the block maxima method and the peak over threshold method.

#### Block Maxima 

The block maxima method consists of dividing the series of interest into non-overlapping blocks of the same length and selecting the maximum the variable takes in each period. The resulting series, depending on the shape parameter, a Gumbel, Fréchet, or Weibull1 distribution will be produced.

#### Peak over Threshold

An alternative approach is the peak over threshold method which considers the distribution of exceedances over a certain threshold. Depending on the shape parameter, the exceedanaces will be following an Exponential, Pareto, or Beta distribution.

## Application and Results

In this project, we apply VaR and ES models, historical as well as parametric, to the Moroccan Most Active Shares Index. In addition, we employ extreme value theory, with its two approaches, in order to model the tail distribution, left and right, of the stock index daily log-returns. We get as a result:

|              | Header 1        | Header 2                       || Header 3                       ||
|              | Subheader 1     | Subheader 2.1  | Subheader 2.2  | Subheader 3.1  | Subheader 3.2  |
|==============|-----------------|----------------|----------------|----------------|----------------|
| Row Header 1 | 3row, 3col span                                 ||| Colspan only                   ||
| Row Header 2 |       ^                                         ||| Rowspan only   | Cell           |
| Row Header 3 |       ^                                         |||       ^        | Cell           |
| Row Header 4 |  Row            |  Each cell     |:   Centered   :| Right-aligned :|: Left-aligned  |
:              :  with multiple  :  has room for  :   multi-line   :    multi-line  :  multi-line    :
:              :  lines.         :  more text.    :      text.     :         text.  :  text.         :
|--------------|-----------------|----------------|----------------|----------------|----------------|

## Code Structure

### About The Data

### Data Preprocessing

### Model Estimation
