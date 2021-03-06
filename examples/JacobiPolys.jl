using ApproxFun
using SpectralMeasures
using Plots; Plots.gr(legend=false,linewidth=2, xlims=(-1.2,1.2),ylims=(0,1))

Δ = freejacobioperator()

# Legendre polynomials
n=1
  bLeg = (1:n-1)./sqrt(4*(1:n-1).^2-1)
  plot(spectralmeasure(zeros(n),bLeg),title="n = $(n)")


# Ultraspherical polynomials
γ = 0.6
n= 100
  bUlt = .5*sqrt(((1:n).*(2γ+(0:n-1)))./((γ+(0:n-1)).*(γ+(1:n))))
  plot(spectralmeasure(zeros(n),bUlt),title="n = $(n), \\gamma = $(γ)")


# Jacobi polynomials
α = 0.4; β = 1.9
  n=0
  a = (β.^2-α.^2)./((2.*(0:n)+α+β).*(2.*(1:n+1)+α+β))
  b = 2*sqrt(((1:n).*(α+(1:n)).*(β+(1:n)).*(α+β+(1:n)))./((2.*(1:n)+α+β-1).*((2.*(1:n)+α+β).^2).*(2.*(1:n)+α+β+1)))
  plot(spectralmeasure(a,b),title="n = $(n), \\alpha = $(α), \\beta = $(β)")
