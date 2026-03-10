# 2 sphere wire prob 
two conducting spheres of different radii and charge are attached with a wire, what is the final charge on each sphere, what is the potential?

Conducting sphere rad R1 with initial charge Q1_i 
"" with rad R2 and ic Q2_i

# soln
what we know: 
the total amount of charge in the system is constant 
the final potential of both spheres will be equal after connected

Qtot = Q1f + Q2f (cons of charge)
Q2f = Qtot - Q1f
V1f = V2f
k Q1f / R1 = k Q2f / R2 

R2 Q1f = R1 Q2f 
Q1f = Q2f R1/R2 | now sub in Qtot for Q1f = Qtot - Q2f
qtot - q2f = q2f r1/r2 
q2f = r2 qtot/ (r1 + r2)

since v2f = k q2f / r2 
= k (r2 qtot/ (r1 + r2)) / r2
= k qtot / (r1 + r2)

# 2 sphere egg problem

we have an "egg" shaped conductor (tot charge q) with the bottom tracing sphere w r2
and the top (narrower) part wiht r1 

this probelm is actually basically the same as the last i think ??

basically its two connected spheres so then the potential on one is the same as the other

V1 = V2 
k q1 / r1 = k q2 / r2 | REMEMBER: only true when we define V(inf) = 0 and for point-looking charges
q1 / r1 = q2 / r2 

r2 q1 = r1 q2 

A1 = 4 pi r1^2 
A2 = 4 pi r2^2 
q1 = sig1 * A1 
r2 * sig1 * 4 pi r1^2 = r1 * sig2 * 4 pi r2^2 
sig1 * r1 = sig2 * r2 
sig1/sig2 = r2/r1

# non conventional V=0  
* if we have a dialectric sphere and we decide to set the center at the V=0 point, what is the voltage at the surface? 

dia sphere rad r, dens rho, call V=0 at center. 

the most clear way for me to see this is 1) gauss law for E(r)
then integrate V(r) = - int(0, r) dot(E, dl)

find E(r) 

flux closed int E dot dA = qenc / eps | qenc = rho * 4/3 pi r3
E int dA = ...
E 4 pi r 2 = rho 4/3 pi r3 / eps
E = rho r / (3 eps)

now to find the potential we integrate from the V=0 point to the surface
we set the origin to the center to make bounds (0, R)
V(r) = - int(0, R) dot(rho r/ (3 eps) rhat, dr rhat) | theta = 0
    = - int(0, R) rho r/ (3 eps) dr cos 0 
    = -rho/(3eps) int(0,R) r dr 
    = -rho/3eps * r2/2 @ (0, R)
    = - R2 rho / (6eps)
