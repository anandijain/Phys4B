Physics 4B: Problem Set 2
1. A rod of length L and total charge Q is a distance D from a point charge q which lies along the
perpendicular bisector of the rod. Find the force of the rod on the point charge.

first bar center origin and call a = L/2 
lam = Q/L
then E(p) = k lam d ihat int (-a, a) dy / (d2 + y2)^(3/2)
so F(q) = k Q q d ihat / L int(-a, a)  dy / (d2 + y2)^(3/2)

2. Find the electric field at the center of a hemispherical shell of charge Q and radius R.

skip too hard 

3. Two identical rods each of length L and charge Q are perpendicular to each other and
separated by a distance D, where the distance D is from the middle of one rod to the nearest tip
of the other. Find the force between them.

use prob 1 
E(x) = k lam x ihat int(-a,a ) dy /(x2 + y2)^3/2
then dF = E dq
see that dq = lam dx 

so F = int (d, d+L) lam E(x) dx
    = int (d, d+L) lam (k lam x ihat int(-a,a ) dy /(x2 + y2)^3/2) dx

4. Find the torque on a charged rod of length L and charge Q when placed in a uniform E field
where the rod makes an angle θ to the field. The rod is hinged on a pivot at one end.

easiest way for me is 

dTau = r cross dF
    = r cross E dq

then see that r = (a cos, a sin, 0)
and Evec = E ihat
and dq/da = lam = Q /L

then do cross product to get 
dTau = -khat E a lam sin(theta) da

and get Tau = -khat E Q L sin(theta) / 2

5. Find the period of oscillation, T, of a little charged ring that is free to move along a vertical
wire when placed equi-distant between two like charges above and below it. Small displacement
only. Treat the “little” ring like a point charge and use the binomial expansion
(http://en.wikipedia.org/wiki/Binomial_series) for small “x” to reduce the net force on the ring to
a linear Hooke’s law style force.

TODO

6. Find the electric field at the top point of a right circular solid cone of charge Q, uniform
density. The cone has a radius a and a height h.

too hard 

7. Show that for a charged circular ring of radius a and total charge Q, the electric field
anywhere inside the plane of the ring would be zero if the electric field was inversely
proportional to r not r2. Your answer is partly verbal and graphical.

skip 