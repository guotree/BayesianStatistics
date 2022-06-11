# Week2

## Frequentist inference

### Confidence intervals

>A confidence interval, in statistics, refers to the probability that a [population](https://www.investopedia.com/terms/p/population.asp) parameter will fall between a set of values for a certain proportion of times.



### Maximum likelihood estimation

maximum likelihood function

> Assuming: these distributions are **Independent and identically distributed**

$$
L =f(x_1,x_2,\dots,x_n\mid\theta)=f(x_1\mid\theta)\times f(x_2\mid\theta)\times \dots\times f(x_n\mid\theta)=\Pi_{i=1}^{n}f(x_i\mid\theta)
$$

log maximum likelihood function

$$
l = \log{L}
$$

maximum likelihood estimation (**MLE**)

$$
\hat{\theta}=\arg\max L
$$

## Bayesian inference



### Continuous version of Bayes' theorem

$$
f(\theta\mid y)=\dfrac{f(y\mid\theta)f(\theta)}{\int f(y\mid\theta)f(\theta)\ \mathrm{d}x}=\frac{\text{likelihood}\times\text{prior}}{\text{normalizing constant}}\propto\text{likelihood}\times\text{prior}
$$

### Credible intervals

> **Two methods** to compute credible intervals
>
> 1. **Highest Density Interval (HDI)**
> 2. **Equal-tailed Interval (ETI)**

prior interval estimates

posterior interval estimates

## Confidence intervals vs Credible intervals

> **Confidence interval**: *there is a 95% probability that when computing a confidence interval from data of this sort, the effect falls within this range*

 

> **Credible interval**: *given the observed data, the effect has 95% probability of falling within this range*
