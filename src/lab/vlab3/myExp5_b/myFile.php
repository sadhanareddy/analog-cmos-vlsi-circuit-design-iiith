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
fwrite($f , "M1 out1 in1 vt 0 NMOS l=$comp_value[0] w=$comp_value[1]\n");
fwrite($f , "M2 out2 in2 vt 0 NMOS l=$comp_value[7] w=$comp_value[8]\n");
fwrite($f , "M3 vt vb 0 0 NMOS l=$comp_value[9] w=$comp_value[10]\n"); 
fwrite($f , "M4 vb vb 0 0 NMOS l=$comp_value[11] w=$comp_value[12]\n"); 
fwrite($f , "r1 Vdd out1 $comp_value[3]\n");
fwrite($f , "r2 Vdd out2 $comp_value[13]\n");
fwrite($f , "Ib Vdd vb $comp_value[2]m\n");
fwrite($f , "Vdd Vdd 0 1.8\n");
fwrite($f , "vin in1 in2 ac $comp_value[5]m\n"); 
fwrite($f , "vin2 in2 0 $comp_value[4]\n");
fwrite($f , ".dc vin2 0 1.8 10m\n");
fwrite($f , ".save dc V(out1) V(in1)\n");
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


