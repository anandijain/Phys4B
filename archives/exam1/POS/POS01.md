# http://nebula2.deanza.edu/~newton/4B/4BE1P4Spring11.jpg

P @ [-R, 0, 0]
find rho' st E(P) = 0 

in 4B, solid spheres can be treated as point charges
The general solution of the problem is we end up with 3 spheres.
The first is 
* "Q_solid" dialectric sphere density rho, radius R @ Origin
* 2nd dialectric sphere density -rho, radius R/2 at [R/2,0,0]
    - This accounts for removing the charge that would be due to the solid if it werent replaced by Q3 
* another dialectric sphere density -rho', radius R/2 at [R/2,0,0]

Charges: 
Q1 = 4/3 rho pi R3 
Q2 = 4/3 -rho pi (R/2)3 
   = -rho pi/6 R3 
Q3 = -rho' pi/6 R3  

E(P) = E_solid + E_cavity + E_negative (POS)
     = -kQ1/R2 + -k Q2 /(3/2 R2)2 + -k Q3/(3/2 R2)2 
     = -4/3 k rho pi R3/R2 + k rho pi/6 R3/(9/4 R2) + k rho' pi/6 R3/(9/4 R2)
     = -4/3 rho + 2/27 rho + 2/27 rho' 
    => 34/27 rho = 2/27 rho'
    => rho' = 17 rho
