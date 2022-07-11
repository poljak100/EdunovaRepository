<?php

echo 'Hello World', '<hr />';
$s = 'Filip';
echo $s, '<hr />';
$d = 3.14;
echo $d, '<hr />';
$b = true;
echo $b, '<hr />';
$niz_indeks = [1,2,3,4,'Osijek'];
print_r($niz_indeks);
echo '<hr />';

$niz_asoc = [
'ime' => 'Filip',
'prezime' => 'Kovač',
'mjesto' => 'Đakovo'
];
echo '<hr />';
print_r($niz_asoc);
echo '<hr />';
echo $niz_asoc['prezime'];