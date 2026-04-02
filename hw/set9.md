notes: 

L = N Phi / I

when thinking inductors you must always start from faradays law 
so to derive the voltage across an inductor 

Eps = - N d(Phi)/dt     | magnitude only so minus sign dropped
and L = N Phi / I
L I = N Phi     // d/dt

L dI/dt = N dPhi/dt
    = Eps

energy: 
always start from Power P with units J/s so dU/dt = P
P = VI for any circuit element
so for a resistor 
dU/dt = VI 
dU = VIdt // int    (assume constant V and I )
U = VI t = I2 R t or V2 t / R

inductor energy 
P = VI 
dU/dt = V_L I 
    = L dI/dt I     | cancel the dt and integrate
int dU = int L I dI
U = L I2 / 2    | so the work required to get a current I thru an inductor L is L I2 / 2




1. Derive the inductance of a solenoid and rectangular toroid.

the inductance is the ratio of the flux over the current. remember always
if the flux is big and the current is small, then the inductance is high

REMEMBER: Inductance L = N Phi / I (dont forget the turns N)

for the solenoid the area taken for the flux is the area in the solenoid (radius r, turn density n)
quickly derive B = mu0 n I (4 integrals, 3 cancel to zero, pretty easy)
now for the flux 
Phi = int B dot dA but the solenoid approx is that B is uniform and we let the normal (dAhat) parallel B
    = B int dA
    = B A
    = mu0 n I * pi r2 

L = N Phi / I 
    = N mu0 n pi r2
    = mu0 N2 pi r2 / l


now for the toroid(IR = a OR = b, total turns = N, height=h) 
quickly find the magnitude of the magnetic field using Amperes law

B = mu0 N I / (2 pi r)  | for r in (a, b), zero else 
see that the direction of B is azimuthal (3 step RHR, Idl x rhat. pointing to some point in between IR and OR)

now the area is the region enclosed by the loops which will be (b-a) * h. but dA will need to be h * dr because B changes with radius. 

Phi = int B dot dA 
    = int (a, b) mu0 N I / (2 pi r) * h dr 
    = mu0 N I h ln(b/a) / 2pi

so the inductance is 
L = N Phi / I 
    = N * mu0 N h ln(b/a) / 2pi
    = N2 mu0 h ln(b/a) / 2pi 


2. Find the energy stored in a toroid of N turns carrying a current I. Also do Solenoid 
2b. energy density of both 

first solenoid: 
P = VI 
dU/dt = L dI/dt I 
U = 1/2 L I2 

but L not given 
L = N Phi / I 
    = N B A / I 
    = N mu0 n I pi r 2 / I
    = N2 mu0 pi r2 / l  | l is the length not inductance

U = 1/2 * N2 mu0 pi r2 / l * I2 

but what is I, we want the energy in terms of the B field!

B = mu0 n I 
I = B / (mu0 n)
I2 = B2 / (mu02 n2)

U = 1/2 * N2 mu0 pi r2 / l * B2 / (mu02 n2)
    = B2 pi r2 l / (2 mu0)

see that pi r2 l is a volume so we can define something called energy density which is U/Vol
muB (magnetic field energy density) = B2 / (2 mu0)

Toroid: 
toroid(IR = a OR = b, total turns = N, height=h) 
P = VI 
dU/dt = L dI/dt I
U = 1/2 L I2 

what is L = N Phi / I 

B inside is N I mu0 / (2 pi r)
Phi is the flux
    = int (a, b) N I mu0 / (2 pi r) * h dr 
    = N I mu0 h / 2pi int (a, b) dr/r
    = N I mu0 h ln(b/a) / 2pi 

so the inductance is
L = N Phi / I
    N2 mu0 h ln(b/a) / 2pi 

I is given so 
U = 1/2 (N2 mu0 h ln(b/a) / 2pi) I2 

this is the energy but to find the energy density we cannot simply divide by the volume because the magnetic field is not uniform

muB(toroid) = B2 / 2mu0
    = (I N mu0 / (2 pi r))2 / (2mu0)
    = I2 N2 mu0 / (8 pi2 r2)

so if we wanted U(toroid) from muB 
it woudl be U = int muB dVol 
and dVol = 2 pi r * dr * h
then integrate from r in (a, b)

3. Derive the equations for inductive and capacitive reactance
and prove that Current and voltage are out of phase by ninety
degrees (but different “ways”) in an inductor and capacitor.

start off with putting a sin AC voltage source across our three circuit elements 
first just a resistor across the AC 
Vs - VR = 0 (Kirchoff voltage law)
Vs = V0 sin(wt), Vr = IR
IR = V0 sin(wt)
so I(t) = V(t)/R    | they are in phase

now put a capacitor on the source
C = Q/V so V = Q/C
V0 sin(wt) - Q/C = 0
Q = V0 C sin(wt) | d/dt, chain rule 
I(t) = dQ/dt = V0 C w cos(wt)

cos leads sin by 90, so in capacitors current leads voltage by 90 degrees

now inductor on source
VL = L dI/dt
V0 sin(wt) - L dI/dt = 0
dI = V0/L sin(wt)dt | integrate 
I(t) = -V0/(w L) cos(wt)
so I lags V by 90 degrees

now for the reactances
X_R:
I(t) = V(t)/R 
so V(t) = I(t) R so X_R = R

X_C: 
I(t) = dQ/dt = V0 C w cos(wt)
so I = V0 C w 
V0 = I / (C w)
X_C = 1 / (C w)

X_L:
I(t) = -V0/(w L) cos(wt)    | why we drop minus in finding X_L, the minus belongs to the phase relation
I w L = V0 
X_L = 1 /(w L)


4. Find the phase difference between the source voltage and
current in a LR circuit and an RC circuit.

LR: 
Vs - Vr - Vl = 0 
Vs = Vr + Vl
Vr in phase with current make a vector on phasor diagram

then Vl will lead by 90 so add perp vec counterclock of Vr 
then add Vl + Vr for the hypotenuse (Vs)

then see that tan phi = Vl/Vr = I XL / (I R)
XL/R = w L / R so phi = atan(w L / R)

RC: 
Vs - Vr - Vc = 0
Vs = Vr + Vc 

draw the phasor diagram with Vc lagging current 
then tan(phi) = Vc / Vr 
    = Xc / R 
    = 1 / (w C R)

phi = -atan (1 / (w R C))

if phi is the angle of source voltage relative to current then phi needs to be negative for the RC and positive for the LR

5. Derive the equation for the impedance, Z, of an LRC series
circuit and find the one frequency where the current through the
circuit is a maximum (the so called resonance frequency).

so for LRC Vs = Vr + Vc + Vl so tan phi = abs(VL - Vc)/ (VR) = (wL - (1/wC)) / R // atan = phi but the impedance will be sqrt(R2 + (w L - 1/(w C))2)

we want the reactances to be equal in magnitude so that the cancel the most, we arent allowed to change anything but omega 

so w L = 1 / (w C) 
w2 = 1 / (L C)
w = sqrt(1 / (L C))

but 2 pi w = f for Hz 
so f = 1 / (2 pi sqrt(L C))