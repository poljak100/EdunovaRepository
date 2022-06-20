<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="functions.php" method="GET">
        <input type="text" name="num01" placeholder="Number1">
        <select name="Oper">
            <label>Chose operation!</label>
            <option value="add">add</option>
            <option value="sub">subtract</option>
        </select>
        <input type="text" name="num02" placeholder="number2">
        <button type="submit">calculate</button>
    </form>
</body>


</html>