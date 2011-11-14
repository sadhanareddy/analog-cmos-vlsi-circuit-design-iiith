*inverter
.include '180nm_bulk.txt'
M1 out1 vb 0 0 NMOS l=180n w=10000n
M2 vb vb 0 0 NMOS l=380n w=90000n
M3 out vb1 out1 0 NMOS l=180n w=10000n
M4 vb1 vb1 vb 0 NMOS l=980n w=90000n
Ib Vdd vb 3.7m
Vdd Vdd 0 1.8
Vdc out 0 dc 1.6
.dc Vdc 0 1.8 10m
.save dc I(Vdc) V(out)
.end
