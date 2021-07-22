<?php

require __DIR__ . '/vendor/autoload.php';

use \App\Entity\Heroi;

//VALIDAÇÃO DO ID
if (!isset($_GET['id']) or !is_numeric($_GET['id'])) {
    header('location: index.php?status=error');
    exit;
}

//CONSULTA A VAGA
$obHeroi = Heroi::getHeroi($_GET['id']);

//VALIDAÇÃO DA VAGA
if (!$obHeroi instanceof Heroi) {
    header('location: index.php?status=error');
    exit;
}

//VALIDAÇÃO DO POST
if (isset($_POST['excluir'])) {

    $obHeroi->excluir();

    header('location: index.php?status=success');
    exit;
}

include __DIR__ . '/includes/header.php';
include __DIR__ . '/includes/confirmar-exclusao.php';
include __DIR__ . '/includes/footer.php';