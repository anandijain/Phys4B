module Phys
"""
rvec(from, to) is the convention.

names suffixed by vec are vectors (harpoon)
suffix "hat" are directional unit vectors
no suffix indicates a norm ie 

say rvec(from, to) is  athing
then r(from,to) = norm(rvec(from,to))

the wolfram code for doing the basic point charge coulomb forces is 

pos[charge[q_, r_]] := r
chg[charge[q_, r_]] := q

F[charge[q1_, r_], charge[q2_, r_]] := ConstantArray[0, Length[r]]
F[charge[q1_, r1_], charge[q2_, r2_]] :=
 Module[{d = r2 - r1},
  k q1 q2 d/Norm[d]^3
 ]

Ef[r_, charge[q_, r_]] := ConstantArray[0, Length[r]]
Ef[r_, charge[q_, r0_]] := Module[{d = r - r0}, k q d/Norm[d]^3];
Ef[r_, charges_List] := Total[Ef[r, #] & /@ charges];

example:

q1 = charge[q, {0,0}]
q2 = charge[q, {l, 0}]
F[q1, q2]

Ef[{2, 0, 0}, {charge[3, {0, 0, 0}]}]

"""
greet() = print("Hello World!")

end # module Phys
