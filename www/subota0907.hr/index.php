<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    Subota
    <ul>
        <li>
            <a href="zadatak01.php">prvi zadatak</a>
        </li>
        <li>
            <a href="zadatak02.php">drugi zadatak</a>
        </li>
        <li>
            <a href="zadatak03.php">treći zadatak</a>
        </li>
        <li>
            <a href="zadatak04.php">četvrti zadatak</a>
        </li>
        <li>
            <a href="zadatak05.php">peti zadatak</a>
        </li>
    </ul>

    <form action="" method="post">
<select name="stavka" id="stavka">
<option value="1">Stavka 1</option>
<option value="2">Stavka 2</option>
<option value="3">Stavka 3</option>

</select>

<select name="Stavka2" id="Stavka2">
<?php
for($i=1;$i<=333;$i++):
?>
<option value="<?=$i?>">Stavka<?=$i?></option>
<?php endfor; ?>
</select>


</form>
</body>
</html>