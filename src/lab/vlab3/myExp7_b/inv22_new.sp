*inverter
.include '180nm_bulk.txt'
M3 out in2 vt 0 NMOS l=180n w=90000n
M4 vt1 in1 Vt 0 NMOS l=180n w=90000n
M1 vt vb 0 0 NMOS l=180n w=90000n
M2 vb vb 0 0 NMOS l=180n w=10000n
M5 vt1 vt1 Vdd Vdd PMOS l=180n w=50000n
M6 out vt1 Vdd Vdd PMOS l=180n w=50000n
Ib Vdd vb 1m
Vdd Vdd 0 1.8
vin1 in1 in2 ac 10m
vin2 in2 0 dc .9
.ac dec 50 10meg 10000meg
.save ac V(out) V(in1)
.end
