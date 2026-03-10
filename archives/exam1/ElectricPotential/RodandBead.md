# http://nebula2.deanza.edu/~newton/4B/4BE1P2Fall10.jpg

uniform Rod(len=D, charge=Q)
lam = Q/D 
Pi = [0,D]
Pf = [0, 2D]
q = Charge(q,m, Pi) with 0 initial velocity

Find the final velocty when q is released from rest at the point Pf.
The q is constrained to y axis. 

# soln

The solution to this problem is to recognize that we can find the work done on the bead (q) by finding the change in potential between the Pi
and Pf 

W = Delta U {sys = bead q}. There is only kinetic energy in this system

-q(Delta V) = Delta KE 
-q(Vf - Vi) = KEf - KEi     | KEi 0 because released from rest. now need to find V(y)

## find V(y)

because continuous charge distribution need to integrate
since uniform charge distribution dq/dx = lam

the distance r from the charge element and (0, y) is
r = sqrt(x2 + y2)

V(y) = int(0, D) dV 
    = int(0, D) k dq / r 
    = k lam int(0, D) dx / r    | we can leave this annoying integral unevaluated in phys 4B

so delta V = V(2D) - V(D)
    = k lam [int(0, D) dx / (sqrt(x2 + (2D)2)) - int(0, D) dx / (sqrt(x2 + D2))]
    note that this term will be negative since the right quantity in the brackets will be bigger 

W = -q (Vf - Vi) = 1/2 m vf^2 
vf = sqrt(-2q/m * Delta V) 
    = sqrt(-2q/m * k lam [int(0, D) dx / (sqrt(x2 + (2D)2)) - int(0, D) dx / (sqrt(x2 + D2))])

 
