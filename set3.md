# find the electric field at P = [x,0] due to a charged circle
O = Origin
C = Circle[O, a], with total charge Q
lam = Q/(2 pi a) # linear charge density  


## charge element
param curve of C
pc(theta) = [a cos, a sin]
pc' = [-a sin, a cos]
dq = lam ds 
ds/dtheta = norm(pc'(theta))
norm(pc'(theta)) = sqrt(a2 cos2 theta + a2 sin2 theta)
                 = sqrt(a2 (c2 + s2 ))
                 = sqrt(a2)
                 = a

dq = lam a dtheta 

E(P) = int dE (POS)
     = int dE_x + int dE_y (int dE_y is 0 by sym )
     = int dE_x (let phi be the angle from the line between P and dq and the x axis)
     = int k dq r(hat) / r2 cos phi

the electric field in the X direction due to any given charge element dq 
will be = dE * cos phi. the vertical position of the charge element dq = a sin theta
where theta is the angle of the charge element. if r(hat) is the vector from the charge element dq to P
then r(hat) [x,0] - [a cos theta, a sin theta]
r then (norm(rhat)) = sqrt(x2 -2 a x cos theta + a2)
      = int k lam a dtheta cos phi ihat/ r2
      = k lam a2 int (x - a cos theta) dtheta / r3 

the final result is E(x) = ihat k Q x / (x2 + a2)^(3/2)


# find the electric field at P = [0,0,z] due to a charged hollow sphere with total charge Q
P = (0,0,z)
S = Sphere[O, a]
sig = Q/(4 pi a2) = Q/A

dq/dA = sig # uniform surface charge density 

introduce spherical coordinates with 
theta = polar angle from +k
phi = azimuthal angle from +i

## first we need to derive an expression for dA 
imagine a patch on the surface of the sphere in terms of dphi and dtheta
what is the area of the patch?
start with a simpler problem. 
for a circle, ds was a*dtheta which is the standard arc-length expression

The first part is to understand the cartesian conversion from spherical coordinates
let P(theta, phi) be a point on the sphere.
the altitude (z) must be `a cos theta` because phi has no impact on altitude

Notice that the x component will only be `a` (the full radius when phi is zero and theta = pi/2)
but x will decrease to zero as theta -> 0

so the x component must be (a sin theta cos phi)

similarly y is at its maximum when phi = pi/2 and theta = pi/2
so y = (a sin theta sin phi)

cartesisan(P) = (a sin theta cos phi, a sin theta sin phi, a cos theta)
now we need to find the area element dA
the thing to remember for a param surface r(u,v) is that the area element is a cross product

where r_u means (partial r/ partial u)

(r_u cross r_v) du dv

we end up with **a2 sin theta dtheta dphi**

we can then know that since Q/(4pi a 2) = sig
dq = (Q/4pi a2) * a2 sin theta dtheta dphi
dq = (Q/4pi) sin theta dtheta dphi

now we need to figure out dE and the r vector and its norm

rvec = [0,0,z] - [a sin theta cos phi, a sin theta sin phi, a cos theta]
the norm i believe works out to 
r = sqrt(a2 + z2 - 2 a z cos theta)


E(z) = int dE (POS)
     = int dE_z + int dE_perp (by symmetry int dE_perp = 0)
     = int dE_z 
     = int k dq rhat/r2 
     = int k dq i hat cos alpha /r2 (alpha is the angle made from vertical z axis to the line between P and the charge element dq)
     = ihat k Q/4pi int sin theta (z - a cos theta) dtheta dphi / r3 


# now we want to find the flux around the sphere for some R > r 
so we have a gaussian sphere with radius R 
by symmetry we can conclude that since sphere is invariant under rotation that we could pick any axis 
and thus we can write E purely radially

E(r) = kQ/R2 Rhat (if R > a (sphere radius))

and we know for a sphere that the normal nhat = Rhat 
one thing thats confusing is for that cross product we did to compute the dA 
if we had flipped the order of the product we would get the opposite normal
for the sphere we need to know the one coming from in -> out. how do we know besides maybe evaluating at a test point like (a,0,0)? 

anyways we get for the flux I 

I = closed int kQ rhat/r2 * a2 sin theta dtheta dphi rhat 
  = closed int kQ R2 sin theta dtheta dphi/R2
  = 2pi kQ int (0, pi) sin theta dtheta  
  = 4pi kQ 
  = Q/eps_0

# E field due to infinite hollow cylinder of radius a (dE POS)
cylinder on k axis
find E(P). P = [x,0,0]
surface charge density sig
cylinder radius a
i believe dA = a dtheta dz 
so dq = sig a dtheta dz
rvec = P-dq(position) = [x,0,0] - [a cos theta, a sin theta, z]
r = sqrt(x2 + z2 + a2 - 2 x a cos theta)

then 
E(P) = int dE (POS)
     = int dE_x + int dE_perp (perp is zero by sym)
     = int k dq ihat cos alpha / r2 (where alpha is the angle made by the line from P to dq point from the i axis)
     = k sig a ihat int (x - a cos theta) dtheta dz / r3
     = k sig a ihat int (-inf inf) int (0 2pi) x - a cos theta dz dtheta / r3 (where r is the norm from above)

# E field due to infinite hollow cylinder of radius a (Gauss Law)

sig = surface charge density 
P = [x,0,0]
define gaussian surface as cylinder with length L and radius R > a 

note the translational invariance of the field meaning that no matter what z is, it will not change even if we flip it, this means that the khat component of E = 0 so it must be radial or zero

similarly it is known that for any patch on our gaussian surface dA the normal vector is radial. 

so Evec(P) = E(r) rhat
and dAvec = dA rhat

our gaussian surface encloses qenc charge = sig 2 pi a L 

now for GL
I = closed int dot(Evec, dAvec) = qenc/ eps_0
  = closed int E(R) dA = sig 2 pi a L / eps_0

now we break up the closed integral into three. cap1 cap2 and side

  = int cap1 ... + int cap2 ... + int side ...
  = int side 
i came up with two ways to justify that the cap integrals are 0. 
the first is that we know that the e field is translation invariant in z, so then the e is the same for the two caps but the normal is opposite thus they must cancel. 

the other way is to just say that we know that the e field is radial but the caps are perpendicular to the radial direction, so the integrals are 0 
  = int side E(R) dA (now since R is fixed for the gaussian surface it can be taken out of integral)
  = E(R) int dA 
  = E(R) 2 pi R L  = sig 2 pi a L
  so E(R) = (sig a)/(R eps_0)

# Gauss Law proof that E = 0 inside hollow charged sphere 
my professor gave a 3 step checklist for gauss law problems to conclude if E = 0 
1) if E perpendicular to dA everywhere 
2) if dot(E, dA) > 0 and dot(E, dA) < 0 and add to zero 
3) E = 0 

then the way he is having us do problems, lets take proving that any point in hollow sphere of uniform surface charge density as example is the following

I_Enet = closed int dot(E, dA) = qnet/eps_0
then we use symmetry to show that E(P) = E(r) rhat (meaning it is radially directed and only depends on radius)
then we use the basic fact that nhat = rhat for a sphere
so  = closed int E dA cos 0 
    = closed int E dA
    = E closed int dA (since E is fixed for our gaussian surface (defined to be a sphere at radius of our arbitrary point P))

now here is where im confused, he said to have a full treatment of the problem 
we need to split up E into Ein and Eout for the electric field due to charges inside and ouside the gaussian surface 

can you maybe help finish the problem and address what needs to be done for Ein and Eoout

because to me you can always say that the flux contribution from charges outside is zero, no? 
i know of course that Eout itself isnt guaranteed to be 0 


# integral dE POS for the field of an infinite plane of charge
sig = dq/dA 
P = [x,0,0]

dq @ [0, y, z] # arbitrary
rvec = [x, -y, -z]
r = sqrt(x2 + y2 + z2)

dA = dydz
dq = sig dydz

E = int dE (POS)
  = int dE_x + int dE_perp
  = int dE_x (int dE_perp 0 by sym)
  = int k dq cos alpha / r2 (alpha is the angle made from x axis to the line through the dq and P)
  = x sig k ihat int (-inf, inf) int (-inf, inf) dy dz / r3

# E field due to infinite plane of charge (Gauss Law)
infinite sheet on yz plane, sig = dq/dA (uniform surface charge density)
P = (x,y,z)
E(P) = ?

create a gaussian cylinder along the line (0, y, z) to P of length 2x and radius R, centered at yz plane
three open surfaces make up the closed cylinder, c1, c2, s. (c for cap, s for side)

* we can prove that the E field is independent of the y and z coordinate based on translational symmetry
we can move the sheet up down back front and its the same sheet
**proves that E(x,y,z)=E(x), no dependence on y or z**

* note this means that if P = (x,y,z) we can translate it and make it (x,0,0)
also note that we could rotate the sheet (about the axis of P and the point on the plane perpendicular to P) and it remains unchanged. 
this symmetry prevents E(P) from having a y or z component which is separate from being independent of them as parameters (ie E_y could be nonzero and still not depend on y) but this sym prevents it
- **proves that E_y(P)=0 and E_z(P)=0**
at this point Evec(x) = E(x) ihat  

* we can mirror the whole space reflect across plane and the plate is the same 
so under a reflection xhat sign flips
this means that E(-x) = -E(x)
therefore the E is aligned with the normal  for both caps

I = closed int dot(E, dA) = q_enc/eps_0
  = int c1 + int c2 + int s 
  = int c1 + int c2 (int s is zero. the normal vector is always perpendicular to the E field)
  = 2 int dot(E, dA) (symmetry)
  = 2 int E dA cos 0 (the caps are everywhere parallel to E)
  = 2 E int dA (because of the uniformity of the direction then the only thing that E's magnitude can depend on is the distance from the plate (x), and we are holding that fixed for the caps so E cannot change)
  = 2 E A = sig pi R2 / eps_0
  = 2 E pi R2 = sig pi R2 / eps_0
  = E = sig/(2 eps_0)

# set3 #2: 
