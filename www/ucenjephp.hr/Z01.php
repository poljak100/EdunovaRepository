<!-- START tijelo -->
<main>
    <div class="callout">
        <div class="gornji-tekst">
            <h5>Stranica prima 4 GET parametara (a, b, c, d) i ispisuje
                umnožak zbroja prvi i drugi te treći u četvrti
            </h5>
        </div>
    </div>
    <div class="callout" id="izlaz">
        <?php
        $a = $_GET['a'];
        $b = $_GET['b'];
        $c = $_GET['c'];
        $d = $_GET['d'];
        $umnozak = $_GET['a'] * $_GET['b'] * $_GET['c'];
        $rezultat = $umnozak * $_GET['d'];
        ?>

        <ul>
            <li>Prvi parametar: <?php echo $_GET['a']; ?></li>
            <li>Drugi parametar: <?php echo $_GET['b']; ?></li>
            <li>Treći parametar: <?php echo $_GET['c']; ?></li>
            <li>Četvrti parametar: <?php echo $_GET['d']; ?></li>
        </ul>
        <div>
            <p>Rezultat:</p> <u><?php echo $rezultat; ?></u>
        </div>
    </div>
</main>
<!-- END tijelo -->