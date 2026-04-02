6. Find the electric field vector anywhere in the plane of a dipole. Let the charge value on one
charge be q. Let them be separated by d. Let the origin be in between them. And say they are
each on the y axis.

q1 = Charge(q, [0, d / 2])
q2 = Charge(-q, [0, -d / 2])

P = [x, y]
a = d/2 
then r1vec = [x, y-a]
r2vec = [x, y+a]
r1 = sqrt(x2 + (y-a)2)
r2 = sqrt(x2 + (y+a)2)

then E(P) = k q r1vec / r1^3 - k q r2vec / r2^3


7. Three positive charges, q1, q2, and q3 are connected with two strings of equal length L. Due to
mutual Coulomb repulsion the charges spread out and form a straight line such that the
distance between 1 and 3 is 2L and, with 2 in the middle, the distance between 1 and 2 or 2 and
3 is just L. Find the tension force in each string


F(on q1) = k q1 q2 / L2 + k q1 q3 / (4 L2)  (in -ihat) 

F(on q2) = k q1 q2 / L2 - k q2 q3 / L2 (depends on magnitudes what direction)

F(q3) = k q1 q3 / (4 L2) + k q2 q3 / L2

i think that the tension on string 1 should be = and opposite to F(on q1) because we are at equillibrium so there should be no net force on the string

same for string 2 = and opposite to F(q3)