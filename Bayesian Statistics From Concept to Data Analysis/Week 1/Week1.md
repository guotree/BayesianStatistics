# Week1

## Probability

**Three paradigms of Statistics**

1. Classical paradigms: equally likely

2. Frequentist paradigms: relative frequency

3. Bayesian paradigms: a personal perspective

## Bayes' theorem

**Conditional probability**
$$
P(A\mid B)=\dfrac{P(A\cap B)}{P(B)}
$$
**Bayes' theorem**
$$
P(A_k\mid B)=\dfrac{P(B\mid A_k)P(A_k)}{\sum_{i=1}^{n}P(B\mid A_i)P(A_i)}
$$

## Review of distributions

$$
E[x]=\int_{-\infty}^{\infty}xf(x)\ \mathrm{d}x\\
E[g(x)]=\int_{-\infty}^{\infty}g(x)f(x)\ \mathrm{d}x\\
$$
$$
E[cX]=cE[X]\\
E[X+Y]=E[X]+E[Y]\\
\text{if}\ X\perp Y,\ E[XY]=E[X]\cdot E[Y]
$$

$$
\mathrm{Var}(X)=\int_{-\infty}^{\infty}(x-E(X))^2f(x)\ \mathrm{d}x
$$


**Bernoulli distributions**
$$
X\sim B(p)\\
f(X=x\mid p)=f(x\mid p)=p^x(1-p)^{1-x}\mathbb{I}_{\{x\in\{0,1\}\}}(x)
$$
Expected value:
$$
E[X]=p
$$
Variance:
$$
\mathrm{Var}(X)=p(1-p)
$$
**Binomial distributions**
$$
X\sim Bin(n,p)\\
P(X=x\mid p)=f(x\mid p)=\binom{n}{x}p^x(1-p)^{1-x}\\
\binom{n}{x}=\frac{n!}{x!(n-x)!}
$$
Expected value:
$$
E[X]=np
$$
Variance:
$$
\mathrm{Var}(X)=np(1-p)
$$
**Uniform distributions**
$$
X\sim U[\theta_1,\theta_2]\\
f(x)=
\frac{1}{\theta_2-\theta_1}\mathbb{I}_{\{\theta_1\leq x\leq \theta_2\}}(x) 
$$
Expected value:
$$
E[X]=\frac{\theta_1+\theta_2}{2}
$$

Variance:
$$
\mathrm{Var}(X)=
$$



**Exponential distributions**

Waiting time between two events
$$
X\sim Exp(\lambda)\\
f(x\mid \lambda)=\lambda e^{-\lambda x}
$$
Expected value:
$$
E[X]=\frac{1}{\lambda}
$$
Variance:
$$
\mathrm{Var}(X)=\frac{1}{\lambda^2}
$$
**Normal distributions**
$$
X\sim N(\mu,\sigma^2)\\
f(x\mid \mu,\sigma^2)=\frac{1}{\sqrt{2\pi\sigma^2}}e^{-\frac{(x-\mu)^2}{2\sigma^2}}
$$
Expected value:
$$
E[X]=\mu
$$
Variance:
$$
\mathrm{Var}(X)=\sigma^2
$$