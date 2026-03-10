## What is work?

Work is the transfer of energy from one system to another by a force acting through a displacement.

## what does work do?

Work changes energy. 

## What does work?
* Forces (via the force), torques, fields 

W = int dot(Fvec, dr)
Work has units of N m (also called Joules J)

U = energy


The net external work done on a system (can be negative or positive) is equal to the change in energy of the system 

"work energy theorem"
W_net_ext = Delta U


U_E = electric potential energy 
U_E = k q1 q2 / r 

Note that the potential energy scales by 1/r NOT 1/r2 

A system doesn't "have" force or work, because forces and work are interactions between systems. 

KE = Kinetic Energy 
KE = 1/2 m v2


## intro example problem 
1 dim space 
q1 = charge[Q1, origin]
q2 = chargedmass[Q2, m, ri]

q2 initial velocity 0

find vf = ? when r(q1, q2) = rf 

there are two ways to do this problem: with line-integral and without 
this also amounts to deciding which system is used. 
both solutions start with the work energy theorem

## with line integral


W = Delta U (sys = q2)

int (ri, rf) dot(Fvec(1->2), dlvec) = Delta KE | the only energy this system can have is kinetic 
int (ri, rf) F(1->2) dl cos0 = KE_f - KE_i (KE_i zero because vi=0. force aligned with displacement so vector dot just multiply magnitudes)
int (ri, rf) k Q1 Q2 dr / r2 = 1/2 m v_f2 | KE = 1/2 m v2 
k Q1 Q2 ((rf - ri)/(rf ri)) = 1/2 m v_f2 
sqrt(2 k Q1 Q2 / m ((rf - ri)/(rf ri))) = v_f 

## without line integral 

the important point is to notice that we will use a system that has a defined electric potential energy 

W = Delta U (sys = q1 q2). since q1 fixed, there is a net ext force on it. but its doesnt have any displacement, so dl = 0 thus W = 0 
0 = D KE1 + D KE2 + D U_E | D KE1 = 0 because it remains at rest entirely 
  = (KE2_f - KE2_i) + (UE_f - UE_i) | KE2_i = 0 by Vi = 0 and KE2 = 1/2 m v 2 by KE defn
  = 1/2 m v_f2 + (k Q1 Q2 / rf - k Q1 Q2 / ri)

vf = sqrt(2 k Q1 Q2 / m (1/ri - 1/rf))


## dl = 0 => W_netext = 0

when we have two charges q1 q2 and hold one fixed, there is a net external force causing the charge to not move. but there is no displacement. and for the q2 there is no external force. thus the net external work done on the system is zero

# what is electrostatic potential and what does potential do? 
electrostatic potential is a difference in electric potential energy per unit of electric charge 

potential causes charge to move 

# what is voltage?

voltage is a colloquial term to describe a potential difference between two points 