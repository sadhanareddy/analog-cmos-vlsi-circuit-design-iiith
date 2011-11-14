*inverter
.include '180nm_bulk.txt'
M1 out1 in1 vt 0 NMOS l=180n w=10000n
M2 out2 in2 vt 0 NMOS l=180n w=30000n
M3 vt vb 0 0 NMOS l=180n w=10000n
M4 vb vb 0 0 NMOS l=180n w=90000n
r1 Vdd out1 1000
r2 Vdd out2 1000
Ib Vdd vb 1m
Vdd Vdd 0 1.8
vin1 in1 0 ac 10m dc .9
vin2 in2 0 ac -10m dc .9
.ac dec 50 10meg 10000meg
.save ac V(out1) V(in1)
.end
