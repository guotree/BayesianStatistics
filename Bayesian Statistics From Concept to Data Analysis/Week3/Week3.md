# Week3

## Conjugate

**Definition** Let $\Phi$ be a parametric family. A prior $p(\theta)$ belonging to $\Phi$ is said to be conjugate for the likelihood $p(x\mid \theta)$ if and only if the posterior $p(\theta\mid x)$ belongs to $\Phi$.

## Beta distributions and Bernoulli/Binomial distributions

**Beta distributions**
$$
f(x)=\frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha)\cdot\Gamma(\beta)}x^{\alpha-1}(1-x)^{\beta-1}\mathbb{I}_{\{0< x< 1\}}
$$
expected value:
$$
E[X]=\frac{\alpha}{\alpha+\beta}
$$
variance:
$$
\mathrm{Var}[X]=\frac{\alpha+\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}
$$

> If we are 100% certain of the outcome before the experiment, we learn nothing by performing it. 

when $\theta\sim Be(\alpha,\beta)$ and $X\sim Bin(n,\theta)$
$$
\theta\mid x\sim Be(\alpha+\sum x_i,\beta+n-\sum x_i)
$$

$$
\text{posterior mean}=\frac{\alpha+\beta}{\alpha+\beta+n}\cdot\frac{\alpha}{\alpha+\beta}+\frac{n}{\alpha+\beta+n}\cdot\frac{\sum x_i }{n}
$$

$\alpha+\beta$ is the *effective sample size*

$$
\text{posterior mean}= \text{prior weight}\times\text{prior mean}+\text{data weight}\times\text{data mean}
$$

**prior predictive distribution**
$$
f(y)=\frac{f(y\mid\theta)f(\theta)}{f(\theta\mid y)}
$$
for Beta-Bernoulli predictive distribution:
$$
f(y)=\frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha+\beta+1)}\cdot\frac{\Gamma(\alpha+1)}{\Gamma(\alpha)}\cdot\frac{\Gamma(\beta+1-y)}{\Gamma(\beta)}\quad\text{for}\ y=0,1
$$


## Gamma distributions and Poisson distributions

**Gamma distributions**
$$
f(x)=\frac{\beta^\alpha}{\Gamma(\alpha)}x^{\alpha-1}e^{-\beta x}\quad\text{for}\ x>0
$$
expected value:
$$
E[X]=\frac{\alpha}{\beta}
$$
variance:
$$
\mathrm{Var}[X]=\frac{\alpha}{\beta^2}
$$

Poisson distributions
$$
f(x\mid\lambda)=\frac{\lambda^{\sum x_i}e^{-n\lambda}}{\Pi x_i}
$$

when$\lambda\sim\Gamma(\alpha,\beta)$ and $X\sim Pois(\lambda)$
$$
\lambda\mid x\sim\Gamma(\alpha+\sum x_i,\beta+n)
$$

$$
\text{posterior mean}=\frac{\alpha+\sum x_i}{\beta+n}=\frac{\beta}{\beta+n}\cdot\frac{\alpha}{\beta}+\frac{n}{\beta+n}\cdot\frac{\sum x_i}{n}
$$

prior mean: $\frac{\alpha}{\beta}$

prior std dev: $\frac{\sqrt{\alpha}}{\beta}$

effective sample size: $\beta$

vague prior: $\varepsilon>0\quad\Gamma(\varepsilon,\varepsilon)\quad\frac{n+\sum x_i}{\varepsilon+n}\approx\frac{\sum x_i}{n}$