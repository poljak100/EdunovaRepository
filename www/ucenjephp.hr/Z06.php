<?php
$i = $_GET['i'];

if (isset($_GET['i'])) {
    if ($i % 2 === 0) {
        echo '<body style="background-color: green">';
    } else if ($i % 2 === 1) {
        echo '<div style=\'background-color: red;\'>Lorem ipsum</div>';
    }
} else echo '<b>Unesi parametar!</b>';
