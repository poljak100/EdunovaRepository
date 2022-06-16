<?php
$numbers = [1, 33, 44, 55];
$voce = array('apple', 'orange', 'pear');

//var_dump($numbers);
//echo $voce[1];

$colors = [
    1 => 'red',
    4 => 'blue',
    6 => 'green'
];


//echo $colors[4];

$hex = [
    'red' => '#f00',
    'blue' => '#0f0'
];

//echo $hex['blue'];
//komentar

$person = [
    'frist_name' => 'Dino',
    'last_name' => 'Poljak',
    'email' => 'Dinopolja@hotmail.com'
];

//echo $person['frist_name'];

//$age = 20;
//if ($age >= 18) {
// echo 'you are old';
//}

$x = 1;
while ($x <= 15) {
    // echo 'Number' . $x . '<br>';
    $x++;
}


$x = 1;
do {
    // echo 'number' . $x . '<br>';
    $x++;
} while ($x <= 5);


function registeruser()
{
    // echo 'user';
}

registeruser();
