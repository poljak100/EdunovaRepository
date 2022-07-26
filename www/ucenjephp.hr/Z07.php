// Ispišite sve parne brojeve od 1 do 21



<?php
for ($i = 0; $i < 21; $i++) {
    if ($i % 2 === 0 && $i !== 0) {
        echo $i, ' ';
    }
}
?>