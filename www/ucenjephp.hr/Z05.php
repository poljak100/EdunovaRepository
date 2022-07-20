        <div class="callout">
            <div class="gornji-tekst">
                <h3>
                    ZADATAK 5: Stranica prima 3 GET parametra (x, b, z) koji su cijeli brojevi
                    te ispisuje najveći primljeni broj
                </h3>
            </div>
        </div>
        <div class="callout" id="izlaz">
            <?php
            $a = $_GET['a'];
            $b = $_GET['b'];
            $c = $_GET['c'];
            ?>

            <ul>
                <li>Prvi parametar: <? echo $_GET['a']; ?></li>
                <li>Drugi parametar: <? echo $_GET['b']; ?></li>
                <li>Treći parametar: <? echo $_GET['c']; ?></li>
            </ul>

            <div>
                <p>Najveći broj: </p>
                <?php
                if (isset($_GET['a']) && isset($_GET['b']) && isset($_GET['c'])) {
                    if ($a > $b && $a > $c) {
                        echo $a;
                    } else if ($b > $a && $b > $c) {
                        echo $b;
                    } else if ($c > $a && $c > $b) {
                        echo $c;
                    }
                }
                ?>
            </div>
        </div>
        <!-- End tijelo -->
        <?php

        require_once 'podnozje.php'; ?>
        </div>
        <?php require_once 'jsskripte.php'; ?>
        </body>

        </html>