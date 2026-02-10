# http://nebula2.deanza.edu/~newton/4B/4BE1P3Fall2015.jpg

## problem: 
Dialectric `solid = Sphere[Origin, R]`, volume charge density `rho`
Sphere Hollow made in `S: hollow = Sphere[{R/2,0,0}, R/2]` 
Point charge `q = Charge[{R/2,0,0}, -Q]`
Point `P = {0,R,0}`

Find Q such that E_y(P) = 0 (no vertical component)

## soln

rvec(solid, P) = [0, R, 0]
rvec(q, P) = [-R/2, R, 0]
r(q,P) = R/2 sqrt(5)


E(P) = E_solid + E_cavity + Eq (POS)

use the code
```mathematica
q1 = charge[4/3 rho Pi R^3, {0,0,0}]
q2 = charge[-Pi/6 rho R^3, {R/2,0, 0}]
q3 = charge[-q, {R/2,0,0}]
e = Ef[P, {q1,q2, q3}]
Solve[e[[2]] ==0, q]//FullSimplify
```
