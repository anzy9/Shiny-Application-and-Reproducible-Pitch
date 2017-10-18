---
title: "Central Limit Theorem Demo"
author: "Anjali Singh"
date: "18 October 2017"
output: ioslides_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

## Overview

This is a short demo on Central Limit Theroem. We will see given large sample size, every exponential distribution follows Central Limit Theorem

We will simulate the exponential distribution and investigate whether it follows the central limit theorem.

      

## Control Parameters and Sample Code
There are three control Parameters

- lamba

- Sample Size

- Simulation count

Lamba is the rate parameter and will be set to 0.2, Sample Size and Simulation will be inputed by the user
```{r, echo = TRUE,eval=TRUE,results='hide'}
lambda <- 0.2;
samples <- 40;
simulationCount <- 1000;
simMeans = NULL
for (i in 1 : simulationCount) {
    simMeans = c(simMeans, mean(rexp(samples,lambda)))
}
```

## Distribution Plot
Plot for Sample size=40 and Simulation=1000
```{r}
hist(simMeans, prob=TRUE, col="gray", main="Distribution",breaks=40, xlim=c(2,8), xlab = "Simulation Means")
lines(density(simMeans), lwd=3, col="red")
```

## Usage guidelines
1) App can be accessed from https://anjy9.shinyapps.io/CentralLimitTheoremDemo/
2) Github link https://github.com/anzy9/Shiny-Application-and-Reproducible-Pitch
3) Increase the sample size to 50 and above the distribution follows CLT(red line)
4) Simulation count is for increasing the simulations
