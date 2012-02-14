*inverter
.include '180nm_bulk.txt'
.include 'varicap_diode_test.txt'
M1 a c b gnd NMOS l=180n w=30000n
M2 c a b gnd NMOS l=180n w=30000n
Ib b gnd 1m
L1 vdd a 1n
L2 vdd c 1n
D1 d a test
D2 d c test
Vdd Vdd 0 1.8
vctrl d gnd 0.1
.tran 0.1ns 0.6us 0.595us
.save tran v(c) v(a)
.end
