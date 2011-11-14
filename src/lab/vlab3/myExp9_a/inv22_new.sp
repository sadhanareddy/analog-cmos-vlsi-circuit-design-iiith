*inverter
.include '180nm_bulk.txt'
M1 Vdd in out 0 NMOS l=180n w=90000n
cl out 0 1p
M2 out Vb 0 0 NMOS l=180n w=10000n
M3 Vb Vb 0 0 NMOS l=180n w=30000n
Ib Vdd Vb 1m
Vdd Vdd 0 1.8
vin in 0 dc 1.1
.dc vin 0 1.8 10m
.save V(out) V(in)
.end
