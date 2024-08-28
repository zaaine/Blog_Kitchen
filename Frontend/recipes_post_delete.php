<?php

session_start();

require_once(__DIR__ . '/isConnect.php');
require_once(__DIR__ . '/config/mysql.php');
require_once(__DIR__ . '/databaseconnect.php');
require_once(__DIR__ . '/modules/functions.php');


$postData = $_POST;

if (!isset($postData['id']) || !is_numeric($postData['id'])) {
    echo 'il faut un identifiant valide pour supprimer une recette';
    return;
}

$deleteRecipeStatement = $mysqlClient->prepare('DELETE FROM recipes WHERE recipe_id = :id');
$deleteRecipeStatement->execute([
    'id' => (int)$postData['id'],
]);

redirectToUrl('index.php');
