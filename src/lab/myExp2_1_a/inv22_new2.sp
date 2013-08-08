*inverter
.include '45nm_HP.pm'
M1 out in 0 0 NMOS l=45n w=100000n
cl out 0 100f
r1 out Vdd 1000
Vdd Vdd 0 1.1
vin in 0 dc 1
.dc vin 0 2 10m
.save V(out) V(in)
.end
