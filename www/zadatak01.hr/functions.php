<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    function myCalculator($num01, $oper, $num02)
    {
        $sum = 0;

        switch ($oper) {
            case "add":
                $sum = $num01 + $num02;
                break;
            case "sub":
                $sum = $num01 - $num02;
                break;
            default:
                $sum = "error";
                break;
                return $sum;
        }
        return $sum;
    }
    $num01 = $_GET["num01"];
    $oper = $_GET["oper"];
    $num01 = $_GET["num02"];

    echo "Value:" . myCalculator($num01, $oper, $num02);
    ?>
</body>

</html>