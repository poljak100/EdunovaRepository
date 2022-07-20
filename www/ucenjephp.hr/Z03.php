<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <?php require_once 'zaglavlje.php'; ?>
</head>

<body>
    <div class="grid-container">
        <?php include_once 'izbornik.php'; ?>
        <!-- Start tijelo -->
        <div class="grid-x grid-margin-x" id="tijelo">
            <div class="cell">
                <div class="callout">
                    <h3> Stranica prima 4 parametara i ispisuje ih jedno
                        pored drugom svaki u svom panelu (callout)
                        na large širini</h3>
                </div>
            </div>
        </div>

        <div class="grid-x grid-padding">
            <div class="callout primayry">
                <?php echo $_GET['p1']; ?>
            </div>
            <div class="callout success">
                <?php echo $_GET['p2']; ?>
            </div>
            <div class="callout warning">
                <?php echo $_GET['p3']; ?>
            </div>
            <div class="callout alert">
                <?php echo $_GET['p4']; ?>

            </div>

        </div>
        <!-- End tijelo -->
        <?php

        require_once 'podnozje.php'; ?>
    </div>
    <?php require_once 'jsskripte.php'; ?>
</body>

</html>