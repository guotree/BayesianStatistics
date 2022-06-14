# Week4

## Gamma distribution and Exponential distributions

when $Y_i\sim Exp(\lambda)$, $\lambda\sim \Gamma(\alpha,\beta)$

prior mean: $\frac{1}{\lambda}$

prior std dev: $\frac{1}{\lambda^2}$

posterior: 

$$
\lambda\mid y\sim\Gamma(\alpha+n,\beta+\sum y_i)
$$

posterior mean:

$$
\text{posterior mean}=\frac{\alpha+n}{\beta+\sum y_i}
$$

effective sample size $\alpha$

posterior predictive PDF:

$$
f(y^{\star}\mid \boldsymbol{y})=\int f(y^{\star}\mid \lambda)f(\lambda\mid\boldsymbol{y})\ \mathrm{d}\lambda
$$


> **Tips for 'Effective sample size'**: [What is the "effective sample size" of the prior in Bayesian statistics? - Cross Validated (stackexchange.com)](https://stats.stackexchange.com/questions/515169/what-is-the-effective-sample-size-of-the-prior-in-bayesian-statistics)
>
> It's a heuristic to understand the influence of the prior on the posterior parameters.

## Normal distributions

### With variance know

when $X_i \overset{iid}{\sim}N(\mu,\sigma_0^2)$, prior $\mu\sim N(m_0,s_0^2)$
$$
f(\mu\mid x)\sim N(\frac{\frac{n\bar{x}}{\sigma_0^2}+{\frac{m_0}{s_0^2}}}{\frac{n}{\sigma_0^2}+\frac{1}{s_0^2}},\frac{1}{\frac{n}{\sigma_0^2}+\frac{1}{s_0^2}})
$$

posterior mean:

$$
\begin{align}
\text{posterior mean}&=\frac{\frac{n}{\sigma_0^2}}{\frac{n}{\sigma_0^2}+{\frac{1}{s_0^2}}}\bar{x}+\frac{\frac{1}{s_0^2}}{\frac{n}{\sigma_0^2}+{\frac{1}{s_0^2}}}m\\
&=\frac{n}{n+\frac{\sigma_0^2}{s_0^2}}\bar{x}+\frac{\frac{\sigma_0^2}{s_0^2}}{n+\frac{\sigma_0^2}{s_0^2}}m
\end{align}
$$

effective sample size: $\frac{\sigma_0^2}{s_0^2}$

### With variance unknow

> $\sigma^2\rightarrow\sigma^2\mid x\rightarrow\mu\mid\sigma^2,x$

when $X_i\mid\mu,\sigma^2\overset{iid}{\sim}N(\mu,\sigma^2)$, 

$\mu\mid\sigma^2\sim N(m,\frac{\sigma^2}{w})$, effective sample size: $w=\frac{\sigma^2}{\sigma_{\mu}^2}$

$\sigma^2\sim\Gamma^{-1}(\alpha,\beta)$

$\sigma^2\mid x\sim\Gamma^{-1}(\alpha+\frac{n}{2},\beta+\sum_{i=1}^{n}(x_i-\bar{x})^2+\frac{nw}{2(n+w)}(\bar{x}-m)^2)$

$\mu\mid\sigma^2,x\sim N(\frac{n\bar{x}+wm}{n+w},\frac{\sigma^2}{n+w})$

$$
\text{posterior mean}=\frac{n\bar{x}+wm}{n+w}=\frac{w}{n+w}\cdot m+\frac{n}{n+w}\bar{x}
$$

effective sample size: $w$

$\mu\mid x\sim t$

## Alternative priors

### Non-informative priors

minimize the amount of information that goes into the prior

for $Y_i\sim B(\theta)$, $f(\theta)\sim Beta(0,0)\propto \theta^{-1}(1-\theta)^{-1}$ *Improper prior* 

$f(\theta\mid y)\sim Beta(y,n-y)$

$\text{posterior mean}=\frac{y}{n}=\hat{\theta}$



for $Y_i\sim N(\mu,\sigma^2)$, $f(\mu)\propto1$ and $\mu\mid y\sim N(\bar{y},\frac{\sigma^2}{n})$

$f(\sigma^2)\propto\frac{1}{\sigma^2}\sim\Gamma^{-1}(0,0)$

$\sigma^2\mid y\sim\Gamma^{-1}(\frac{n-1}{2},\frac{1}{2}\sum(y_i-\bar{y})^2)$

### Jeffreys prior

> **Definition**: Jeffreys prior is defined in terms of the Fisher information
> $$
> f(\theta)\propto\sqrt{I(\theta)}
> $$

for $Y_i\sim N(\mu,\sigma^2)$, $f(\mu)\propto1$ and $f(\sigma^2)\propto \frac{1}{\sigma^2}$

for $Y_i\sim B(\theta)$, $f(\theta)\propto \theta^{-\frac{1}{2}}(1-\theta)^{-\frac{1}{2}}\sim Beta(\frac{1}{2},\frac{1}{2})$

## Linear regression

