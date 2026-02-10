# http://nebula2.deanza.edu/~newton/4B/4BE1P2Fall14.jpg

## prob 

Q = charge(Q, [-d, 0])

rod(center=origin, length=L, angle_to_+x = theta, charge=Q)

find the horizontal force on the rod due to the charge Q 

## soln 

To recognize that this problem is not integral dE but integral dF, you need to recognize that the force on each small piece of the rod needs to be added and that the force changes as you move along the rod. Then you can remember that the problem start is `int E dq` not `int dE` because we need to now convert the dq into a geometric movement along the rod `dq/dl = lam` 
The problem will then be solved by finding the electric field at an arbitrary point dq on the rod as a function of the position on the rod. 

let lam = Q/L 
dq/dl = lam (uniform charge density)

rod traces curve P(t) = [t cos theta, t sin theta ] for t in (-L/2, L/2)

rvec(Q, P) = [t cos theta, t sin theta] - [-d, 0] = [t cos theta + d, t sin theta]
r = sqrt((t cos theta + d)2 + t2 sin2 theta)

F = int dF 
  = int E dq 
  = int k Q dq rvec / r3
  = int (-L/2, L/2) k Q lam dt * [t cos theta + d, t sin theta] / r3 
  = ihat k Q2 / L int (-L/2, L/2) (t cos theta + d / r3) dt 



