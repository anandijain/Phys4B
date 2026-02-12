# Problem 2.32 
Two positive point charges, q A and q B (masses m A and m B ) are at
rest, held together by a massless string of length a. Now the string is cut, and the
particles fly off in opposite directions. How fast is each one going, when they are
far apart?

# sonl

W = D U | sys = qa qb | Work =0 no ext forces

0 = DKEA + DKEB + DUE  | KEis are zero. UEfs = 0 and KEfs are equal by sym
    = 2 KEf - k qa qb / a 
m vf2 = k qa qb / a
vf = sqrt(k qa qb / (m a))

BAD!!! the masses arent said to be equal 

    = 1/2 ma vaf^2 + 1/2 mb vbf^2 - k qa qb / a 

now we know that 1) F = dpvec/dt (momentum) becauise

F = ma 
p = mv 
pdot = ma = F

Force **is** change in momentum 

so since F(A->B) = -F(B->A) by N3L we can know also that d(p_a)/dt = -d(p_b)/dt

the momentums will change equally (opposite directions, momentum is a vector)

so really the momenta themselves have an integration constant 
p_a + p_b = C. but it turns out if A and B start from rest (and no external forces)
p_a = -p_b
ma va = -mb vb 
but in magnitudes its just 
ma va = mb vb 

physics finished pretty much at this point  
eqs = {
0 = 1/2 ma va2 + 1/2 mb vb2 - - k qa qb / a 
ma va = mb vb
}
solve for va and vb 
