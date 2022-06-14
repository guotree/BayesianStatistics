bar_yA=622.8
var_yA=403.1
nA=30
a=3
b=200
w=0.1
m=500

a_pA=a+nA/2
b_pA=b+(nA-1)/2*var_yA
m_pA=(nA*bar_yA+w*m)/(w+nA)

zA=rgamma(10000,shape=a_pA,rate=b_pA)
sig2A=1/zA
muA=rnorm(10000,mean=m_pA,sd=sqrt(sig2A/(w+m)))

bar_yB=609.7
var_yB=401.8
nB=27

a_pB=a+nB/2
b_pB=b+(nB-1)/2*var_yB
m_pB=(nB*bar_yB+w*m)/(w+nB)

zB=rgamma(10000,shape=a_pB,rate=b_pB)
sig2B=1/zB
muB=rnorm(10000,mean=m_pB,sd=sqrt(sig2B/(w+m)))

x = mean(muA>muB)
