*inverter
.include '180nm_bulk.txt'
M1 out in 0 0 NMOS l=180n w=10000n
cl out 0 1p
M2 out Vb Vdd Vdd PMOS l=180n w=90000n
M3 Vb Vb Vdd Vdd PMOS l=180n w=30000n
Ib Vb 0 1m
Vdd Vdd 0 1.8
vin in 0 dc 0.55 ac 10m
.ac dec 50 10meg 1000meg
.save V(out) V(in)
.end
