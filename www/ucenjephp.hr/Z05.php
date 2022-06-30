
<?php


// Stranica prima 3 GET parametra koji su cjeli brojevi
// stranica ispisuje najveći primljeni broj

// ulaz: 3 8 92
// izlaz: 92


// ulaz: 3 3 2
// izlaz: 3

// ulaz: -1 0 -1
// izlaz: 0


$i = array(3, 8, 92);
$y = $i[0];
$z = $y;

for ($x = 1; $x < count($i); $x++) {
    if ($i[$x] > $y) {
        $z = $i[$x];
    }
}

echo "Najveci broj $z!";

?>
<?php
$i = array(3, 3, 2);
$y = $i[0];
$z = $y;
for ($x = 1; $x < count($i); $x++) {
    if ($i[$x] > $y) {
        $z = $i[$x];
    }
}
echo "najveci broj $z!";
?>