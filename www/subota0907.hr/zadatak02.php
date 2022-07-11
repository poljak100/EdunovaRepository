<?php

// Program prima parametar x
// ako je vrijednost cijeli broj ispisuje ga
// inače ispisuje poruku da mora biti cijeli broj

$stringX = isset($_GET['x']) ? $_GET['x'] : 0;
$intX = (int)$stringX;

if($intX !== 0) {
    echo $intX;
} else {
    echo 'Parametar mora biti cijeli broj';
}
