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

use the code in readme
```mathematica
q1 = charge[4/3 rho Pi R^3, {0,0,0}]
q2 = charge[-Pi/6 rho R^3, {R/2,0, 0}]
q3 = charge[-q, {R/2,0,0}]
e = Ef[P, {q1,q2, q3}]
Solve[e[[2]] == 0, q]//FullSimplify
```

now manually

E = Esol + Ehol + Eq 

Esol: We can treat both Esol and Ehol as point charges 
k Q / r2 
Q = rho 4/3 pi R3 
Esol = 4 rho k pi R3 / 3 R2     
    = 4 rho k pi R / 3      | can further simplify by using k = 1/(4 pi eps)
    = rho R / (3 eps) jhat 

Ehol: 
Here there is some difficulty: because we only care about the jhat component of this field vector

define theta as the angle from center(solid), P, center(hollow)

then we can find the vertical part of Ehol_y = Ehol * cos theta jhat

r(hol, P) = sqrt((R/2)2 + R2) 
    = sqrt(5/4 R2)
    = sqrt(5) R/2 

note r2 = 
    5/4 R2 

now we can find cos theta = R/((sqrt(5) R)/2)
    = 2/sqrt(5)

Vhol = 4/3 pi r3 
    = 4/3 pi (R/2)3
    = pi R3 / 6
Qhol = -rho * vol
    = -rho pi R3 / 6
first find Ehol = 
    k Qhol / r2
    = k (-rho pi R3 / 6) / (sqrt(5) R/2)2
    = - k rho pi R / (3 sqrt(5))

now find E_hol_y by multiplying by cos theta

E_Hol_y = - k rho pi R / (3 sqrt(5)) cos theta
    = - k rho pi R / (3 sqrt(5)) * 2 / sqrt(5)
    = - 2 k rho pi R / 15 jhat   | simplify k 
    = - rho R / (15 sqrt(5) eps) jhat 

now we can find Eq 

Eq = -k q/r2 
    = - k q / (sqrt(5) R/2)2

now Eq_y = - k q / (sqrt(5) R/2)2 * cos theta
    = - k q/ (5 R2/4) * 2/ sqrt(5)
    = - 8 k q / (5 sqrt(5)) jhat

Now we want Esol_y + Ehol_y + Eq_y = 0

0 = rho R / (3 eps) jhat 


# way too much algebra. 