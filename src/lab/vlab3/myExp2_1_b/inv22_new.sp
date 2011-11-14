*inverter
.include '180nm_bulk.txt'
M1 out in 0 0 NMOS l=180n w=90000n
cl out 0 1p
r1 out Vdd 500
Vdd Vdd 0 1.8
vin in 0 dc 0.9 ac 50m
.ac dec 50 10meg 1000meg
.save Vdb(out) V(in)
.end
