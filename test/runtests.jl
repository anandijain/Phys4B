using Phys, Symbolics, LinearAlgebra

@variables Q q l k a θ L h m x D y qt d q_1 q_2 q_3

q1 = Charge(q, [0, 0])
q2 = Charge(4q, [l, 0])
q3 = Charge(Q, [a, 0])


# HW1: #2 
#= 
2. Two similar small conducting balls each of mass m are hung from silk threads each of length l
and carry similar charges q and are in equilibrium. Assume that the angle of separation
between the two threads is a small angle θ. Find the charge on one ball. There is gravity in this
problem.

take the origin to be the point where the threads are attached
with angle θ and half angle (from vertical) a

then our charges will be 
=#
ql = Charge(q, [-L * sin(a), -L * cos(a)])
qr = Charge(q, [L * sin(a), -L * cos(a)])

# distance between the charges 
displacement(ql, qr)
F(ql, qr)

#= 
HW1: 4 

we call the 4 charges, starting from top left going clockwise, q1:4
the origin is the pivot

the mass will
=#
q1 = Charge(q, [-l / 2, 0, 0])
q2 = Charge(2q, [l / 2, 0, 0])
q3 = Charge(Q, [l / 2, -h, 0])
q4 = Charge(Q, [-l / 2, -h, 0])

m1 = Mass(m, [x - l / 2, 0, 0])
origin = zero(q1.pos)
r = origin - q1.pos
cross(r, F(q4, q1))

#=
5. Two equal positive charges are held fixed and separated by distance D. Find the electric field
vector along their perpendicular bisector. Then find the position relative to their center where
the field is a maximum.


=#

q1 = Charge(q, [-D / 2, 0])
q2 = Charge(q, [D / 2, 0])
q3 = Charge(Q, [0, y])

norm(displacement(q1, q3))

#= 
6. Find the electric field vector anywhere in the plane of a dipole. Let the charge value on one
charge be q. Let them be separated by d. Let the origin be in between them. And say they are
each on the y axis.


=#

q1 = Charge(q, [0, d / 2])
q2 = Charge(-q, [0, -d / 2])
q3 = Charge(Q, [x, y])


#= 
7. Three positive charges, q1, q2, and q3 are connected with two strings of equal length L. Due to
mutual Coulomb repulsion the charges spread out and form a straight line such that the
distance between 1 and 3 is 2L and, with 2 in the middle, the distance between 1 and 2 or 2 and
3 is just L. Find the tension force in each string

=#
q1 = Charge(q_1, -L)
q2 = Charge(q_2, 0)
q3 = Charge(q_3, L)
F(q1, q2)
F(q3, q2)
qs = [q1, q2, q3]
force_matrix(qs)

# work of configuration

q1 = Charge(q_1, [0, 0])
q2 = Charge(q_2, [0, d])
q3 = Charge(q_3, [d, 0])
qs = [q1, q2, q3]
W = charge_config_work(qs)
