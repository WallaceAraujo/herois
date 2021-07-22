<?php

require __DIR__.'/vendor/autoload.php';

define('TITLE','Editar heroi');

use \App\Entity\Heroi;

//VALIDAÇÃO DO ID
if(!isset($_GET['id']) or !is_numeric($_GET['id'])){
  header('location: index.php?status=error');
  exit;
}

//CONSULTA A VAGA
$obHeroi = Heroi::getHeroi($_GET['id']);

//VALIDAÇÃO DA VAGA
if(!$obHeroi instanceof Heroi){
  header('location: index.php?status=error');
  exit;
}

//VALIDAÇÃO DO POST
if(isset($_POST['nome'],$_POST['identidade_secreta'])){

  $obHeroi->nome    = $_POST['nome'];
  $obHeroi->identidade_secreta = $_POST['identidade_secreta'];
  $obHeroi->atualizar();

  header('location: index.php?status=success');
  exit;
}

include __DIR__.'/includes/header.php';
include __DIR__.'/includes/formulario.php';
include __DIR__.'/includes/footer.php';