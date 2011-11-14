*inverter
.include '180nm_bulk.txt'
M1 out in 0 0 NMOS l=180n w=50000n
cl out 0 1p
M2 out out Vdd Vdd PMOS l=180n w=10000n
Vdd Vdd 0 1.8
vin in 0 dc 0.55 ac 10m
.ac dec 50 10meg 1000meg
.save Vdb(out) V(in)
.end
