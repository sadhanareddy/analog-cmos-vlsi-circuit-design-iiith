*inverter
.include '180nm_bulk.txt'
M1 out in 0 0 NMOS l=180n w=50000n
cl out 0 100f
M2 out out Vdd Vdd PMOS l=180n w=10000n
Vdd Vdd 0 1.8
vin in 0 dc 0.9
.dc vin 0 1.8 10m
.save V(out) V(in)
.end
