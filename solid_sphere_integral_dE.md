# solid sphere radius R, center O with charge density rho with int dE

E(P) = ? for P = [rtest,0,0]
There are two cases, 1) rtest < R. 2) rtest > R

first derive that we have a little curved volume element that will have 

in standard spherical coordinates: where theta is polar angle (from +z)
phi is angle from +x on the xy plane
r radius

then the sides of the volume element will be 

r dtheta, dr, r sin theta dphi 

the product is r2 sin theta dphi dtheta dr 

we can simplify the integral by pre-evaluating dphi to 2pi because of sphere sym

2pi r2 sintheta dtheta dr 

also recall for no reason that to convert (r, theta, phi) into (x,y,z) is 
**(r sin theta cos phi, r sin theta sin phi, r cos theta)**


since P on +x we can simplify the integral 

E = int dEx + int dE_perp          | int perp is 0 because symmetry 
  = int k dq ihat / r2 * cos alpha | alpha is the angle made at P between +x and the line(P, dq)
  =                                | here you get stuck

The trick is to make sure that the axis of the polar angle (+z) in this case is aligned with the point P so that we can rewrite the alpha as something like x - r cos theta 

then do the triple integral 

so now we do gauss law

the volume of the hollowed sphere with ID a and OD b is 
this volume has total charge -2Q
vol = 4/3 pi (b3-a3)
rho = -2Q/vol


this doesnt exactly solve the real problem but if we want to find the radius r' such that 
half of the charge is contained 

then vol2 = 4/3 pi (r'3-a3)
so rho * vol2 = charge in the part in radii= (a,r')
  = -2Q/(4/3 pi (b3-a3)) * 4/3 pi (r'3-a3)

end up with 
(r'3-a3)/(b3-a3) = 1/2
Solve[(r0^3 - a^3)/(b^3-a^3)==1/2, r0]

 