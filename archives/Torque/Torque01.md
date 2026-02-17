# http://nebula2.deanza.edu/~newton/4B/4BE1P2Spring11.jpg

We have a massless rod of length L on x axis with left end at origin.
The charge density is lam(x) = p/L(x-L/2) for some const. parameter p

There is a uniform field pointed in +y (+jhat) direction.

There is a mass m hanging from the rod from position x. 

There is gravity in the problem.

Find the position x for the hanging mass such that the rod is @equillibrium.

# soln 

This problem amounts to realizing that we need to balance the torques. 

Tau = I alpha | The net torque on the system is the moment of inertia times the angular acceleration. Alpha is zero based on the problem

The formula for torque is the cross product of the displacement to the applied force and the applied force:

Tau = cross(r, F) can also use
    = r F sin(theta)

We can split up the net torque into the torque due to the E field and the torque due to the tension of the string from the mass:

Tau_Ef + Tau_Tension = 0 

First we find the mass force 

F = ma | {Sys = mass} a = 0 since we want equillibrium 
F_Tm + F_g = 0 
F_Tm + -m g [0, 1] = 0
F_Tm = m g [0, 1]

So the force F_T of the tension on the rod will be -F_Tm 
F_T = -m g[0, 1]

The displacement is x (what we want to find)
so Tau_tension = cross(x, -mg[0,1,0]). Since theta = 90. By RHR the torque will be INTO the page so negative (by choice)
    = -x m g * [0, 0, -1]
    = x m g (scalarized) WRONG be careful and expand to cross prod if needed

det 
[
    i   j   k
    x   0   0
    0   -mg 0
]
= -xmg [0,0,1]


now for Tau_Ef. We will need to integrate cross(r, F) across the len of rod

remember that dq/dx = lam(x)
so dq = lam(x) dx

Tau_Ef = int(0, L) cross(r, F)
    = int(0, L) cross(x, E dq) | torque is positive by RHR and perpendicular everywhere so sin(90) = 1 
    = int(0, L) E x dq sin(90)
    = int(0, L) E x p/L(x-L/2) dx 
    = E p L2 / 12 

now to solve for x

-x m g + E p L2 / 12 = 0 
x = E p L2 / (12 m g)