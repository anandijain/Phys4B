we can associate an electric field with the work required to produce it 

similarly we can do the same thing with a magnetic field.

the idea of energy density is to find the work required to produce a field and divide by the volume of the field. 

the easiest way to derive the (boxed/memorized) formulas muB = B2 / (2 mu0) and muE = 1/2 eps0 E2

is to find the work for the devices that produce a uniform magnetic field and divide by the volume of the device.

for magnetic field energy density this is the solenoid. for electric fields it is the parallel plate capacitor. 

first ill do muB 
# muB
1) define solenoid
radius r, current I, turn density n, length l

the strength of the uniform B field is B = mu0 n I  | n = N/l

remember we want the work in terms of the B field

2) the work done is in getting the current I through it so we can start at Power

P = VI 
dW/dt = VI 
dW/dt = VI | the voltage across an inductor is L dI/dt
dW/dt = L dI/dt I
dW = L I dI | integrate 

W = 1/2 L I2

but we see that if B = mu0 n I then 
I = B / (mu0 n)
so I2 = B2 / (mu02 n2)

L = N Phi / I 
the flux thru the solenoid is B A
so L = N B A / I 

W = 1/2 L I2
    = 1/2 N B A I2 / I
    = 1/2 N B A I
    = 1/2 N A mu0 n I2
    = 1/2 N A mu0 n B2 / (mu02 n2)
    = A l B2 / (2 mu0) 
    = Vol B2 / (2 mu0) 

so we found the work required to make the B for a given volume

then we can take U / Vol to find the energy density where we get an apparently general formula 

muB = B2 / (2 mu0)

# muE 

parallel plate capacitors with area A and separation d 

say the plates are charged, so +Q on one and -Q on the other

then let sig = Q/A 

the capacitance of the capacitor is defined as the charge divided by the change in potential across the plates 

C = Q / (delta V)

and we can do a quick gauss law to find that the electric field between the plates is 
E = sigma / eps0
    = Q / (eps0 A)

and Q = C delta V

delta V = E d = Q d / (eps0 A)

Q = C * Q d / (eps0 A)
C = eps0 A / d

we ask how much work does it take to put a charge dq on the plates
the change in work wrt this small charge dq is equal to the potential across the plates for the given q on the plates 
and V(q) = q / C

dW/dq = V(q)
dW = q dq / C
we integrate from (0, Q) and get 

W = Q2 / (2 C)

substitute Q = CV 

W = C2 V2 / (2 C)
    = 1/2 C V2 | but we want the work in terms of the electric field , we know that for parallel plate caps E d = V 
    = 1/2 C E2 d2
    = 1/2 (eps0 A / d) E2 d2
    = 1/2 A d eps0 E2 

but A d is a volume so we can now convert the work done into a energy density

muE = 1/2 eps0 E2 



