# Week4

## Gamma distribution and Exponential distributions

when $Y\sim Exp(\lambda)$, $\lambda\sim \Gamma(\alpha,\beta)$

prior mean: $\frac{1}{\lambda}$

prior std dev: $\frac{1}{\lambda^2}$

posterior: 

$$
\lambda\mid y\sim\Gamma(\alpha+1,\beta+1)
$$

posterior mean:

$$
\text{posterior mean}=\frac{\alpha+1}{\beta+1}
$$



> **Tips for 'Effective sample size'**: [What is the "effective sample size" of the prior in Bayesian statistics? - Cross Validated (stackexchange.com)](https://stats.stackexchange.com/questions/515169/what-is-the-effective-sample-size-of-the-prior-in-bayesian-statistics)
>
> It's a heuristic to understand the influence of the prior on the posterior parameters.

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
