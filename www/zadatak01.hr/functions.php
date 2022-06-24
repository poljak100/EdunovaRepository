<?php
// Defining function
function whatIsToday()
{
    echo "Today is " . date('l', mktime(1));
}
// Calling function
whatIsToday(); ?>



<?php
// Defining function
function getSum($num1, $num2)
{
    $sum = $num1 + $num2;
    echo "Sum of the two numbers $num1 and $num2 is : $sum";
}

// Calling function
getSum(10, 20);
?>


<?php
// Defining function
function customFont($font, $size = 1.5)
{
    echo "<p style=\"font-family: $font; font-size: {$size}em;\">Hello, world!</p>";
}

// Calling function
customFont("Arial", 2);
customFont("Times", 3);
customFont("Courier");
?>