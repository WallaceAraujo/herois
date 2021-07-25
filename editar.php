<?php

require __DIR__ . '/vendor/autoload.php';

define('TITLE', 'Editar heroi');

use \App\Entity\Heroi;

//VALIDAÇÃO DO ID
if (!isset($_GET['id']) or !is_numeric($_GET['id'])) {
    header('location: index.php?status=error');
    exit;
}

//CONSULTA O HEROI
$obHeroi = Heroi::getHeroi($_GET['id']);

$poderes = '';
$totalPoder = count($obHeroi->poderes);
$i = 1;

foreach($obHeroi->poderes as $poder){
    if($totalPoder == $i){
        $poderes .= $poder->titulo;
    } else{
        $poderes .= $poder->titulo.', ';
    }
    $i++;
}

$obHeroi->poderes = $poderes;

//VALIDAÇÃO DoO HEROI
if (!$obHeroi instanceof Heroi) {
    header('location: index.php?status=error');
    exit;
}

//VALIDAÇÃO DO POST
if (isset($_POST['nome'], $_POST['identidade_secreta'])) {

    if (!isset($_POST["poderes"])) {
        header('location: index.php?status=error');
    }

    $poderes = explode(",", $_POST["poderes"]);
    $poderes = (is_array($poderes) ? $poderes : [$_POST["poderes"]]);

    $obHeroi->nome = $_POST['nome'];
    $obHeroi->identidade_secreta = $_POST['identidade_secreta'];
    $obHeroi->poderes = $poderes;
    $obHeroi->atualizar();

    header('location: index.php?status=success');
    exit;
}

include __DIR__ . '/includes/header.php';
include __DIR__ . '/includes/formulario.php';
include __DIR__ . '/includes/footer.php';