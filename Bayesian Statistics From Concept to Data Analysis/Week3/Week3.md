# Week3

## Conjugate 

**Definition** Let $\Phi$ be a parametric family. A prior $p(\theta)$ belonging to $\Phi$ is said to be conjugate for the likelihood $p(x\mid \theta)$ if and only if the posterior $p(\theta\mid x)$ belongs to $\Phi$.

## Beta distributions and Bernoulli/Binomial distributions

$$
f(z)=\frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha)\cdot\Gamma(\beta)}z^{\alpha-1}(1-z)^{\beta-1}\mathbb{I}_{\{0< z< 1\}}
$$
expected value:
$$
E[Z]=\frac{\alpha}{\alpha+\beta}
$$
variance:
$$
\mathrm{Var}[Z]=\frac{\alpha+\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}
$$

> If we are 100% certain of the outcome before the experiment, we learn nothing by performing it. 

when $\theta\sim Beta(\alpha,\beta)$ and $X\sim Bin(n,\theta)$
$$
\theta\mid x\sim Beta(\alpha+\sum x_i,\beta+n-\sum x_i)
$$

$$
\text{posterior mean}=\frac{\alpha+\beta}{\alpha+\beta+n}\cdot\frac{\alpha}{\alpha+\beta}+\frac{n}{\alpha+\beta+n}\cdot\frac{\sum y_i }{n}
$$

$\alpha+\beta$ is the *effective sample size*

$$
\text{posterior mean}= \text{prior weight}\times\text{prior mean}+\text{data weight}\times\text{data mean}
$$