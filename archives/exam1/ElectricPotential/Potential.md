# http://nebula2.deanza.edu/~newton/4B/4BE1P4Spring10.jpg

There are two infinite sheets with charge density sig and 2sig respectively

(arb) call x=0 the right plate and the right is x=-d 

call the V=0 on the right plate 

then find the potential at some point on the x axis at x=-2d

# solution 

quick and dirty gauss law yields for a infinite plate of sig cd, 
we get E = sig/2eps, thus the right plate E mag will be sig/eps

but here we need to be careful about the direction

for the right plate we are going to have 
E = E_left + E_right
E_right(x) = sig/eps * sign(x) ihat 
E_left(x) = sig/2eps * sign(x+d) ihat

We now find that the E field is -sig/2eps for x in (-d, 0)
and the field for x < -d is -3sig/2eps

Now we can apply the definition of potential by doing two line integral

Delta V = -int E dot dl 

in our case we will take one line integral for the E in between plates 

and one for to the left

Delta V = -(-sig/2eps) int(0, -d) dx -(-3sig/2eps) int(-d, -2d) dx 

the first integral will be sig/2eps [x @(0, -d)  = -d - 0 = -d]
- d sig/(2eps) then the second will be 

3sig/2eps * [x @ [-d, -2d] = -2d - -d = -d]
= -3 d sig /(2eps)

the sum is the potential difference from the right plate to x = -2d:

Delta V = -2 d sig / eps
