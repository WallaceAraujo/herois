<?php

require __DIR__ . '/vendor/autoload.php';

define('TITLE', 'Cadastrar heroi');

use \App\Entity\Heroi;

$obHeroi = new Heroi;

//VALIDAÇÃO DO POST
if (isset($_POST['nome'], $_POST['identidade_secreta'])) {

    if(!$_POST['nome'] OR !$_POST['identidade_secreta']){
        header('location: index.php?status=error');
        exit;
    }

    //Verifica se o heroi existe na base de dados da marvel
    $heroiMarvel = $obHeroi->getHeroiMarvel($_POST['nome']);

    //Se for heroi da marvel redireciono com erro
    if($heroiMarvel){
        header('location: index.php?status=error_1');
        exit;
    }

    //Se não existir poder redireciono com erro
    if(!isset($_POST["poderes"]) OR $_POST["poderes"] == ""){
        header('location: index.php?status=error_2');
        exit;
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