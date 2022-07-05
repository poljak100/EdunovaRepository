<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <?php require_once 'zaglavlje.php'; ?>
</head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Učenje PHP-a</title>

<body>
    <div class="grid-container">
        <div class="grid-x grid-margin-x">


            <main>
                <div class="callout">
                    <div class="gornji-tekst">
                        <h5>Generirane su nasumične vrijednosti varijabli $i i $j između 0 i 5.
                            Pokušaj izračunati krajnju vrijednost $j, a zatim
                            ju provjeri.
                        </h5>
                    </div>
                </div>
                <div class="callout" id="izlaz">
                    <?php
                    if (isset($_GET['rez'])) {
                        $rez = $_GET['rez'];
                        $i = $_GET['i'];
                        $j = $_GET['j'];
                        $k = $i + $j;
                        $J = $j;
                        $J += ++$k;
                    } else {
                        $rez = '';
                        $i = rand(0, 5);
                        $j = rand(0, 5);
                        $k = $i + $j;
                        $J = $j;
                        $J += ++$k;
                    }
                    ?>

                    $i = <?= $i ?>
                    <br>
                    $j = <?= $j ?>
                    <br>
                    $k = $i + $j
                    <br>
                    $j += ++$k;
                    <br>
                    <br>

                    $j = ?
                    <form>
                        <label>
                            <input type="text" name="rez" method="get">
                            <input type="hidden" name="i" value=<?= $i ?>>
                            <input type="hidden" name="j" value=<?= $j ?>>
                            <input type="submit" class="button success" value="Provjeri">
                            <a href="vizualniProgram2.php" class="button alert">Resetiraj</a>
                        </label>
                    </form>
                    <?php
                    if (isset($_GET['rez'])) {
                        if ($rez == $J) {
                            echo 'Točno!';
                        } else echo 'Netočno. Rezultat je ', $J;
                    }
                    ?>
                </div>
            </main>


        </div>

</body>

</html>