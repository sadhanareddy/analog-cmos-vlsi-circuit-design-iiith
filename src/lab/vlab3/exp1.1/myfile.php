<?php


$token = strtok($_POST["val"] , "\n");
echo hello;
$i = 0;
while ($token != false)
{
	$comp_value[$i++] = $token;
	$token = strtok("=");
	$token = strtok("\n");
}
print ( "\nHello again $comp_value[0]\n") ;
echo $i;
$file = "myfile.txt";
$f = fopen($file , "w");

for ($j = 0; $j < $i-1; $j+=1)
{
echo "hello11";
echo $comp_value[$j];
fwrite($f,"$comp_value[$j]\n");
}
fclose($f);
`gnuplot input.txt`;
?>
