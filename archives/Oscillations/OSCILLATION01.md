# http://nebula2.deanza.edu/~newton/4B/4BE1P3Fall10.jpg

The trick here is definitely an exercise in translating Force things into torque things

for instance we need to see that the normal period formula

T = 2 pi sqrt(m/k) only works for linear displacements where mass is correctly the measure of resistance to acceleration

however we are dealing with a dipole and then we translate from hookes law 

F = k delta x 

but here we will have a torque based on delta theta 

Tau = k delta theta 
k = Tau / delta theta

We can recall (since we're given the dipole moment is p = q * d (-q->+q))
that torque is p cross E.

Tau = p Cross E
    = q d Cross E   | the RHR says that this should be negative? (depends on if theta is positive or negative? )
    = (minus?) q d E sin theta | but we are allowed to make a small angle approximation
    = q d E theta

so the spring constant k

k = q d E theta / delta theta | im pretty sure delta theta is just theta
k = q d E 

but here is the trickiest part of the problem.
we cannot just plug in this k into 
T = 2pi sqrt(m/k)

we need to find the moment of inertia of the system to appropriately use this formula. 

we are given that for a point mass a distance r away from the pivot, the moment is I = m r2

so in our case for a single charge the moment will be m * (d/2)2 
but there are two charges so 

Isys = 2 * m (d/2)2
    = 1/2 m d2 

now we can finally plug into the period equation

T = 2 pi sqrt(m d2/(2 q d E))
    = 2 pi sqrt(m d/(2 q E))
    