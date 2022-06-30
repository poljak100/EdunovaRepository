<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <main>

        <div class="gornji text">koji je broj najveci</div>

        <?php
        $a = $_GET['a'];
        $b = $_GET['b'];
        $c = $_GET['c'];

        ?>
        <p>test</p>
        <ul>
            <li>prvi parametar: <?php echo $_GET['a']; ?> </li>
            <li>drugi parametar: <?php echo $_GET['b']; ?> </li>
            <li>treci parametar: <?php echo $_GET['c']; ?> </li>
        </ul>
        <h5>rezultat</h5>
        <div>
            <?php
            if (isset($_GET['a']) && isset($_GET['b']) && isset($_GET['c'])) {
                if ($a > $b && $a > $c) {
                    echo $x;
                } elseif ($b < $a && $b < $c) {
                    echo $b;
                } elseif ($c > $a && $c < $b) {
                    echo $c;
                }
            }
            ?>
        </div>






    </main>



</body>

</html>