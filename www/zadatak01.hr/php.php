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
        <?php
        $a = $_GET['a'];
        $b = $_GET['b'];
        $c = $_GET['c'];
        $d = $_GET['d'];
        $umnozak = $_GET['a'] * $_GET['b'] * $_GET['c'];
        $rezultat = $umnozak * $_GET['d'];
        ?>

        <div class="Doljnji tekst">paragrafi</div>
        <ul>
            <li>Prvi paragraf: <?php echo $_GET['a']; ?> </li>
            <li>drugi paragraf: <?php echo $_GET['b']; ?> </li>
            <li>treci paragraf: <?php echo $_GET['c']; ?> </li>
            <li>cetvrti paragraf: <?php echo $_GET['d']; ?> </li>
        </ul>

        <p>rezultat je:</p> <u> <?php echo $rezultat; ?> </u>




    </main>
</body>

</html>