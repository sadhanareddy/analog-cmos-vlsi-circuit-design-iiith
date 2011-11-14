*inverter
.include '180nm_bulk.txt'
M1 out1 in1 vt 0 NMOS l=180n w=10000n
M2 out2 in2 vt 0 NMOS l=180n w=30000n
M3 vt vb 0 0 NMOS l=180n w=90000n
M4 vb vb 0 0 NMOS l=180n w=90000n
r1 Vdd out1 1000
r2 Vdd out2 1000
Ib Vdd vb 1m
Vdd Vdd 0 1.8
vin in1 in2 ac 10m
vin2 in2 0 0.9
.dc vin2 0 1.8 10m
.save dc V(out1) V(in1)
.end
