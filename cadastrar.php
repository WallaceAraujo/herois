<?php

require __DIR__ . '/vendor/autoload.php';

define('TITLE', 'Cadastrar heroi');

use \App\Entity\Heroi;

$obHeroi = new Heroi;

//VALIDAÇÃO DO POST
if (isset($_POST['nome'], $_POST['identidade_secreta'])) {

    if(!isset($_POST["poderes"])){
        header('location: index.php?status=error');
    }

    $poderes = explode(",", $_POST["poderes"]);

    $poderes = (is_array($poderes) ? $poderes : [$_POST["poderes"]]);


    $obHeroi->nome = $_POST['nome'];
    $obHeroi->identidade_secreta = $_POST['identidade_secreta'];
    $obHeroi->poderes = $poderes;
    $result = $obHeroi->cadastrar();

    header('location: index.php?status=success');
    exit;
}

include __DIR__ . '/includes/header.php';
include __DIR__ . '/includes/formulario.php';
include __DIR__ . '/includes/footer.php';