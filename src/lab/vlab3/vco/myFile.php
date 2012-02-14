<?php

echo $_POST["comp"] ;

$token = strtok($_POST["comp"] , "_");
$i = 0;
while ($token != false)
{
	$comp_value[$i++] = $token;
	$token = strtok("_");
}

$file = "inv22_new.sp";
$f = fopen($file , "w");
//---------------------------------------------------
// Writing the spice code -----------------------------
//---------------------------------------------------
fwrite($f , "*inverter\n");
fwrite($f , ".include '180nm_bulk.txt'\n");
fwrite($f , ".include 'varicap_diode_test.txt'\n");
fwrite($f , "M1 a c b gnd NMOS l=180n w=30000n\n");
fwrite($f , "M2 c a b gnd NMOS l=180n w=30000n\n");
fwrite($f , "Ib b gnd 1m\n");
fwrite($f , "L1 vdd a 1n\n");
fwrite($f , "L2 vdd c 1n\n");
fwrite($f , "D1 d a test\n");
fwrite($f , "D2 d c test\n");
fwrite($f , "Vdd Vdd 0 1.8\n");
//fwrite($f , ".param ctr=0.1\n");
fwrite($f , "vctrl d gnd 0.1\n");
fwrite($f , ".tran 0.1ns 0.6us 0.595us\n");
fwrite($f , ".save v(c) v(a)\n");
fwrite($f , ".end\n");
fclose($f);
echo "Done";
//-----------------------------------------------------
`ngspice -b  inv22_new.sp -r rawfile`;
`cat rawfile |tr [:blank:] "\n" >  outfile`;
//`rm rawfile`;

//$array = file("outfile");

//$i = 0 ;
//while ( $array[$i] != "Values:\n" && $i < 50 )
//{
//	echo $_REQUEST["name"]; 
//	$i++ ;
//}

//$i++;
//	echo  $array[$i];


//<applet code="exp1_out.class" width="1000" height="600" Align="Middle" name= "exp1_out">
?>


