# http://nebula2.deanza.edu/~newton/4B/4BE1006.jpg

This is a cool problem

We are given that there is a charged mass at the origin.
q = Charge(-q, m, [0,0])
q has an initial velocity = [vi, 0]

It is in between two plates with the positive plate at y = d and the negative at y = 0

The plates are lenghth L and it can be assumed there is a perpendicular uniform E field in between the plates.

The problem is to find the voltage required across the plates such that the charge q will pass through the point [L, d].

# Solution

First we must apply the kinematics equation to find how long it would take q to pass through [L, 0] if Delta V = 0. 

x0 + v(t)t + 1/2 a(t) t2 = L    | no horizontal forces on q and x0 = 0 so only velocity
vi*t = L 
t = L/vi

Now we want to use this time to find the E field that would produce an acceleration on q such that it will travel a distance d vertically in t time.

F = m a 
a = -q E / m

now we need to solve for the delta V in terms of E 

delta V = -int(0, d) E dot dl   | dl = dy and E is uniform and parallel with dy 
    = -E int(0, d) dy
    = -E d 

So the magnitude of the potential difference is E*d

thus E = - Delta V / d


ay = - (-q) Delta V / m d = q E / m

now we can apply the kinematics again


y0 + vy(t) t + 1 / 2 ay(t) t2 = d  | there is no initial velocity and y0=0

1 / 2 (q) Delta V / m d t2 = d

Now just solve for Delta V 

Delta V = 2 d2 m vi2 / (q L2)

