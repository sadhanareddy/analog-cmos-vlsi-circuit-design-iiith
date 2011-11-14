*inverter
.include '180nm_bulk.txt'
M1 out in 0 0 NMOS l=180n w=50000n
cl out 0 1p
M2 out Vb Vdd Vdd PMOS l=180n w=90000n
M3 Vb Vb Vdd Vdd PMOS l=180n w=30000n
Vdd Vdd 0 1.8
Ib Vb 0 1m
vin in 0 dc 0.9
.dc vin 0 2 10m
.save Vdb(out) V(in)
.end
