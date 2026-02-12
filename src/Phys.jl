"""
rvec(from, to) is the convention.

names suffixed by vec are vectors (harpoon)
suffix "hat" are directional unit vectors
no suffix indicates a norm ie 

say rvec(from, to) is  athing
then r(from,to) = norm(rvec(from,to))

the wolfram code for doing the basic point charge coulomb forces is in README

"""
module Phys

using Symbolics, LinearAlgebra

@variables Q q l k a θ L h m x D y qt d q_1 q_2 q_3
"""
in electrostatics, r_i means the q_i.pos
and r_ij or my pref r(i->j) is rj- ri = qj.pos - qi.pos
this is the displacement vector from ri to rj 

for my preference d(i->j) is identical to r(i->j)
and dist(i->j) is the explicit norm(d(i->j))

"""
struct Charge
    q
    pos
end

struct Mass
    m
    pos
end

"`from` and `to` are Charges"
function displacement(from, to)
    to.pos - from.pos
end

disp = displacement

rhat(from, to) = normalize(displacement(from, to))

"""

F(of, on) is the electric force of `of` acting on `on`.
in paper notation this is written F_(of->on)
"""
function F(of, on)
    r = displacement(of, on)
    iszero(r) && return 0 # not sure if this is exactly right 
    mag = norm(r)
    rn = normalize(r)
    k * of.q * on.q / mag^2 * rn
end

"""
A[i,j] is the force of Charge i on Charge j
"""
function force_matrix(qs)
    n = length(qs)
    f = F(qs[1], qs[2])
    A = Matrix{typeof(f)}(undef, n, n)
    for i in 1:n
        for j in 1:n
            A[i, j] = F(qs[i], qs[j])
        end
    end
    A
end

# work stuff
"""
qs is vec of Charge(mag, pos)

inefficient but simple, because every qi*V_ri counts each pair twice 
so 1/2 works! the coeff in front of every term like k qi qj / d will be 2 

quick walkthrough of 

q1 = Charge(q_1, [0,0])
q2 = Charge(q_2, [0, d])
q3 = Charge(q_3, [d, 0])
qs = [q1,q2,q3]

"""
function charge_config_work(qs)
    n = length(qs)
    Wsum = zero(qs[1].q)
    for i in 1:n
        V_ri = zero(qs[1].q) # the potential at charge qi
        for j in 1:n
            if i == j
                continue
            end
            # norm is comm so rij = rji 
            rij = norm(displacement(qs[i], qs[j])) # problably could precompute the matrix fast 
            V_ri += k * qs[j].q / rij
        end
        Wsum += qs[i].q * V_ri
    end
    1 // 2 * Wsum
end

export Charge, Mass, displacement, rhat, F, force_matrix, charge_config_work

end # module Phys
