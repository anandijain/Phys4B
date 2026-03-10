# http://nebula2.deanza.edu/~newton/4B/Physics4BExam1Spring2012.pdf

We have a solid sphere(rad=R, dens=rho, center=origin)
Hollow(rad=R/2, center=(R/2, 0,0))
q = (charge=q, mass=m, vi=? (toward center), vf=0 @ origin)

We need to find vi such that vf = 0 at origin

# soln
plan: 
We will apply work energy theorem to (sys = q) to find the initial velocity 

To do this we will need to find the potential difference at rad=R and r=0
then W = -q Delta V

to find delta V = -int(R,0) E dot dl

so this requires finding E with gauss law and principle of superposition

we find that E = Esol + Ehol

Esol = rho r / (3 eps) rhat 
Ehol = -rho r' / (3 eps) rhat 
but these are different r! to fix we do this: 
    = -rho (r - R/2) / (3 eps) rhat 

then E = rho r / (3 eps) rhat + -rho (r - R/2) / (3 eps) rhat
    = rho / 3eps (r - (r - R/2)) ... 
    = rho R / (6 eps) rhat      | woah, its uniform.

delta V = - int(R, 0) E dot dl      | dl = dr rhat
    = - int(R, 0) -rho R / (6 eps) dr 
    = rho R / (6 eps) * -R
    = - rho R2 / (6 eps) 

but then W = q rho R2 / (6 eps) 
this seems wrong because work is positive here but we expect work to be negative since it should be applying in the opposite direction to the displacement (causing the charged mass to slow down)

    = - 1/2 m vi^2

this ends up with

Vi = sqrt(q rho R2 / (3 eps))