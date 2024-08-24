<?php
$recipes = [
    [
        'title' => 'Cassoulet',
        'recipe' => 'Etape 1 : des flageolets !',
        'author' => 'mickael.andrieu@exemple.com',
        'is_enabled' => true,
    ],
    [
        'title' => 'Couscous',
        'recipe' => 'Etape 1 : de la semoule',
        'author' => 'mickael.andrieu@exemple.com',
        'is_enabled' => false,
    ],
    [
        'title' => 'Escalope milanaise',
        'recipe' => 'Etape 1 : prenez une belle escalope',
        'author' => 'mathieu.nebra@exemple.com',
        'is_enabled' => true,
    ],
];
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Affichage des recettes</title>
</head>

<body>
    <ul>
        <?php for ($lines = 0; $lines <= 3; $lines++) : ?>
            <li><?php echo $recipes[$lines]['title'] . ' (' . $recipes[$lines]['author'] . ')'; ?></li>
            <!-- <?php endfor; ?> -->
    </ul>


    <!-- <?php echo '<pre>';
            print_r($recipes);
            echo ' </pre>' ?> -->


    <?php
    foreach ($recipes as $recipe) {
        if ($recipe['is_enabled']) {

            echo $recipe['title'] . ' ' . $recipe['recipe'] . ' contribué(e) par : ' . $recipe['author'] . '<br>' . PHP_EOL;
        }
    } ?>
    <br><br>
    <?php
    $reciped = 'Etape 1 : des flageolets ! Etape 2 : de la saucisse toulousaine';
    $length = strlen($reciped);

    echo 'La phrase ci-dessous comporte ' . $length . ' caractères :' . PHP_EOL;

    ?>
    <br><br><br>
    <?php
    // Enregistrons les informations de date dans des variables

    $day = date('d');
    $month = date('m');
    $year = date('Y');

    $hour = date('H');
    $minute = date('i');

    // Maintenant on peut afficher ce qu'on a recueilli
    echo 'Bonjour ! Nous sommes le ' . $day . '/' . $month . '/' . $year . ' et il est ' . '<strong>' . $hour . ' h ' . $minute . '</strong>';
    ?>

    <br><br>
    <?php echo
    $date = date('d/m/Y');
    $time = date('H \h i');
    ?>

    <?php echo
    $time = date('H \h i');
    ?>

    <?php

    function isValidRecipe(array $recipe): bool
    {
        if (array_key_exists('is_enabled', $recipe)) {
            $isEnabled = $recipe['is_enabled'];
        } else {
            $isEnabled = false;
        }

        return $isEnabled;
    } ?>

</body>

</html>