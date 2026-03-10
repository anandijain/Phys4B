# Problem 2.22 
Find the potential a distance s from an infinitely long straight wire
that carries a uniform line charge λ. Compute the gradient of your potential, and
check that it yields the correct field

# soln

First there is the hard way of finding E, which gives NASTY integral. 

The better way is to find E(r) with gauss law

We want to find the potential distance s away from the wire

so we define an axial gauss cyl with radius s and length L 

then the qenc = L * lam 

We can see by symm that E is radial and our cylinder has a fixed radius r 
thus E constant on the side and caps are perp to E thus zero

Flux cint dot(E, dA) = qenc/eps

= int cap1 + int cap2 + int side = L lam / eps
= int E dA cos 0 = L lam / eps
= E * 2 pi L s = L lam / eps

E(r) = 2 k lam / r 

now we need to take the line integral to find the absolute potential, 
    
V(s) = - int(inf, s) dot(E, dl)
    = - int(inf, s) 2 k lam/r rhat dot dr rhat | theta = 0 
    = - int(inf, s) 2 k lam/r dr cos 0 
    = - 2 k lam int(inf, s) dr / r 
    = -2 k lam [ln(s) - ln(inf)]

but ln(inf) == inf so what do?

We have to just take the potential with reference to some fixed R0. 
