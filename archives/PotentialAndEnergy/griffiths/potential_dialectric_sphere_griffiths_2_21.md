# Problem 2.21 
Find the potential inside and outside a uniformly charged solid sphere
whose radius is R and whose total charge is q. Use infinity as your reference point.
Compute the gradient of V in each region, and check that it yields the correct field.
Sketch V (r)


# Soln

First we need to find the E(r) inside and out

We construct two concentric spherical guassian surfaces, one with radius r > R
and a second with r < R.

GS 1: 

Flux = closed int dot(Evec, dA) = qenc/eps  | by symm, E || dA and qenc = q 
    = closed int E dA cos 0 = q/eps         | E is constant mag for fixed r bc radially directed field
    = E closed int dA = q/eps
    = E 4 pi r2 = q/eps

Eout = q/(4 pi r2 eps) rhat 

GS 2: 
for r le R, need to find qenc 

charge density rho = Qtot/Vol
    = q/(4/3 pi R3)

volume enclosed by r = 4/3 pi r3 
so qenc(r) = Vol * rho
= q/(4/3 pi R3) * 4/3 pi r3 
= q r3/R3

Flux = closed int dot(Evec, dA) = qenc/eps | same logic, E || dA and const cuz radial
    = E cint dA = q r3/(R3 eps)
    = E * 4 pi r2 = ... 

Ein = q r / (4 pi R3 eps) rhat

Now we need to find the potential 

V(R) = - int(inf, R') dot(Eout, dr rhat)
    = - int(inf, R') dot(q/(4 pi r2 eps) rhat , dr rhat)     | because the vectors are aligned theta = 0, we can drop vectors  
    = - int(inf, R') dot(q/(4 pi r2 eps) dr cos 0)
    = - q/(4pi eps) int(inf, R') dr / r2 
    = -q k [-1/r] @ (r, inf)
    = -qk (-1/r - -1/inf)
    = qk/r 

Now to find the potential difference to some point r < R
Remember we want to find the absolute potential of some point inside the dialectric sphere

So we need to break up the computation into a potential difference from infinity to the surface
then from the surface to some arbitrary distance inside. 
The reason for this is that the E field inside is different than outisde 
Inside it scales via r, outside it scales with 1/r2 (like a point charge)
We then add the potentials 

Delta V(R->r') = -int(R, r') dot(Ein, dr rhat)
    = - int (R, r') q r / (4 pi R3 eps) rhat dot dr rhat    | rhats align so drop vecs
    = - int (R, r') q r / (4 pi R3 eps) dr cos 0 
    = - q k / R3 int(R, r') r dr 
    = - q k / R3 [r2/2 @ (R, r')]   | notice here im switching the convention of the order in evaluated integral limits to match (lower, upper) to stay consistent with `int` 
    = - k q  / 2R3 * (r2 - R2)
    = k q / 2R3 * (R2 - r2)

so then V(r) inside is V(surf) + DeltaV(surf->r)
    = k q / R + k q / 2R3 * (R2 - r2)

