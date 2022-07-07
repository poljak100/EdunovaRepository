<?php

// Ispišite tablicu 3 x 3 na način
// da u ćelijama kuteva stavite znak X

// DZ: Napraviti da radi za bilo koja dva unesena broja
//     Putem GET metode

echo '<table border="2" >';
for ($i = 0; $i < 3; $i++) {
    echo '<tr>';
    for ($j = 0; $j < 3; $j++) {
        echo '<td>';
        if (
            ($i === 0 && $j === 0)
            or
            ($i === 0 && $j === 2)
            or
            ($i === 2 && $j === 0)
            or
            ($i === 2 && $j === 2)
        ) {
            echo '*';
        } else {
            echo '&nbsp;';
        }
        echo '</td>';
    }
    echo '</tr>';
}
echo '</table>';
