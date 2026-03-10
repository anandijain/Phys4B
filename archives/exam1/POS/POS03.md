# http://nebula2.deanza.edu/~newton/4B/4BE1P4Spring14.jpg


this one is a bit weird. 

Q1 = charge(Q, [0, d])
Q2 = charge(Q, [0, -d])

This is fixed to x axis, can slide, frictionless
q = chargedmass(q, m, [x, 0])

assuming that x << d, determine the period of oscilation 
given T = 2pi sqrt(m/k) where k is the spring constant in F = k delta x

## soln

rvec(q, Q1) = [0, d] - [x, 0] = [-x, d]
r(q, Q1) = sqrt(x2 + d2) BUT because of "small displacements" comment, we can assume that x << d then r = d because x^2 = 0

E(x) = E_Q1 + E_Q2 (POS)
     = k Q / d2 * rvec(q, Q1) + .. for Q2 (but the point mass makes angle theta wiht x axis, so we can scalarize the vector since we only care about ihat )
     = k Q cos theta / D2 (but since cos theta = x / r and r = d then cos theta = x/d)
     = - k Q x ihat / D3 * 2 (*2 for Q2 by symmetry )
    
Hookes law F = k dx looks like F = qE when x is in the E term
Note here we only take into account the magnitude of the prefix on E(x) as the "spring constant" 
F = 2 k Q / D3 * x
k = 2 k Q / D3 

so T = 2 pi sqrt(m/2kq/D3)
     = 2 pi sqrt((m d3)/(2 k q Q))
