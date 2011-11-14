*inverter
.include '180nm_bulk.txt'
M1 out vb 0 0 NMOS l=180n w=10000n
M2 vb vb 0 0 NMOS l=180n w=30000n
Ib Vdd vb 1.8m
Vdd Vdd 0 1.8
Vdc out 0 dc 1.3
.dc Vdc 0 1.8 10m
.save dc I(Vdc) V(out)
.end
