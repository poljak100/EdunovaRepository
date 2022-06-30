<!-- START tijelo -->
<main>

    <h5>Stranica prima 3 GET parametra (x, y, z) koji su cijeli brojevi
        te ispisuje najveći primljeni broj
    </h5>


    <?php
    $x = $_GET['x'];
    $y = $_GET['y'];
    $z = $_GET['z'];
    ?>
    <ul>test</ul>
    <ul>
        <li>Prvi parametar: <?php echo $_GET['x']; ?></li>
        <li>Drugi parametar: <?php echo $_GET['y']; ?></li>
        <li>Treći parametar: <?php echo $_GET['z']; ?></li>
    </ul>

    <div>
        <b>Najveći broj: </b>
        <?php
        if (isset($_GET['x']) && isset($_GET['y']) && isset($_GET['z'])) {
            if ($x > $y && $x > $z) {
                echo $x;
            } else if ($y > $x && $y > $z) {
                echo $y;
            } else if ($z > $x && $z > $y) {
                echo $z;
            }
        }
        ?>
    </div>

</main>
<!-- END tijelo -->