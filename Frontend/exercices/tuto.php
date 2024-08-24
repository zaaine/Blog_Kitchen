<!DOCTYPE html>
<html>

<head>
    <title>Notre première instruction : echo</title>
    <meta charset="utf-8" />
</head>

<body>
    <!-- Manière d'écrire avec concatenation -->
    <?php
    $fullname = "Aziz";
    echo "Bonjour {$fullname} et bienvenue sur le site !";
    ?>

    <?php
    $fullname = 'Mathieu ';
    echo 'Bonjour ' . $fullname . ' et bienvenue sur le site !'; // OK
    ?>

    <h1>Ma page web</h1>
    <p>Aujourd'hui nous sommes le <?php echo date('d/m/Y h:i:s'); ?>.</p>

    <h2>Affichage de texte avec PHP</h2>

    <p>
        Cette ligne a été écrite entièrement en HTML.<br />
        <?php echo ("Celle-ci a été écrite entièrement en PHP."); ?>
    </p>

    <h3> Manière de faire des calcules </h3>

    <?php
    $number = 2 + 4; // $number prend la valeur 6
    $number = 5 - 1; // $number prend la valeur 4
    $number = 3 * 5; // $number prend la valeur 15
    $number = 10 / 2; // $number prend la valeur 5

    // Allez on rajoute un peu de difficulté
    $number = 3 * 5 + 1; // $number prend la valeur 16
    $number = (1 + 2) * 2; // $number prend la valeur 6
    ?>

    <?php echo  ' il faudra regarder le code  ' . $number .  ' il y\'a plusieurs calcules'; ?>

    <?php
    $number = 10;
    $result = ($number + 5) * $number; // $result prend la valeur 150
    ?>

    <h4> Les conditions </h4>

    <?php
    $isAllowedToEnter = true;

    if ($isAllowedToEnter) {
        echo "Bienvenue petit nouveau. :o)";
    } else {
        echo "T'as pas le droit d'entrer !";
    }
    ?>

    <h5> Les Switchs</h5>

    <?php
    $grade = 8;

    switch ($grade) // on indique sur quelle variable on travaille
    {
        case 0: // dans le cas où $grade vaut 0
            echo "Il faudra revoir tout le cours !";
            break;

        case 5: // dans le cas où $grade vaut 5
            echo "Tu dois réviser plusieurs modules";
            break;

        case 7 && 8: // dans le cas où $grade vaut 7
            echo "Il te manque quelques révisions pour atteindre la moyenne ";
            break;

        case 10: // etc. etc.
            echo "Tu as pile poil la moyenne, c'est un peu juste…";
            break;
    }
    ?>

    <h6> Les ternaires </h6>

    <?php
    $userAge = 24;

    $isAdult = ($userAge >= 18) ? true : false;

    // Ou mieux, dans ce cas précis
    $isAdult = ($userAge >= 18);
    ?>

    <h7> Les boucles </h7> <br>

    <?php
    $lines = 1;

    while ($lines <= 10) {
        echo 'Je ne dois pas regarder les mouches voler quand j\'apprends le PHP.<br />';
        $lines++; // $lines = $lines + 1
    }
    ?>

</body>

</html>