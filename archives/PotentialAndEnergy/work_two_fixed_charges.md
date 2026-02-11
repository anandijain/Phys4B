
Q1 = (Q1, origin)
Q2 = (Q2, [0,L])
P = (d,0) 

i want to find the work i need to do to move a charge q from x=infinity to P

## line integral way 
i think that i can 1) find E(x) 2) -q int (inf, d) dot(E, dx ihat)

W_me = int (inf, d) dot(Fvec_me, dlvec)
    = - int (inf, d) dot(Fvec_el, dlvec)
    = -q int (inf, d) dot(Evec, dlvec)

rvec(Q1->P) = [x,0]. rhat = [1,0]. r = x 
rvec(Q2->P) = [x, -L], rhat = rvec/r, r = sqrt(x2 + L2)

The electric field at [x,0] is 
E_Q1 = k Q1 / x2 ihat 
E_Q2 = k Q2 / r3 [x, -L]

E([x,0]) = E_Q1 + E_Q2 
    = k Q1 / x2 [1,0] + k Q2 / r(Q2->P)3 [x, -L]
W_me = -q int(inf, d) dot(E(x), dx ihat) 
    = -q int(inf, d) (k Q1 / x2) + (k Q2 x/r(Q2->P)3) dx 

This is the painful way ^. Basically the integral computes the potential V in volts (J/C )

## without line integral

First way is to simply compute the potential energies 

UE(Q1->P) = k Q1 q / d 
UE(Q2->P) = k Q2 q / sqrt(d2 + L2)

then since the initial UEs are zero because the r in the denom. is inf and the kinetic energies are always zero 

W = Delta U = D UE(1) + D UE(2) + D KEq 
    = UEf(1) - UEi(1) + UEf(2) - UEi(1)     | D Keq 0 and UEi are zero
    = UEf(1) + UEf(2)
    = k Q1 q / d + k Q2 q / sqrt(d2 + L2)

Even simpler is to realize that we can simply add the potentials due to each point charge

V(rvec) = - int dot(E, dl)

