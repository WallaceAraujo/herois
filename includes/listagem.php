<?php

  $mensagem = '';
if (isset($_GET['status'])) {
    switch ($_GET['status']) {
        case 'success':
            $mensagem = '<div class="alert alert-success">Ação executada com sucesso!</div>';
            break;
        case 'error':
            $mensagem = '<div class="alert alert-danger">Ação não executada!</div>';
            break;
        case 'error_1':
            $mensagem = '<div class="alert alert-danger">Infelizmente não podemos te contratar pois você trabalha ou já trabalhou para a nossa concorrente!</div>';
            break;
        case 'error_2':
            $mensagem = '<div class="alert alert-danger">Infelizmente não podemos te contratar pois estamos contratando apenas herois, a contratação de copeiro, faxineiro etc, será em uma outra faze!</div>';
            break;
    }
}


  $resultados = '';

  foreach($herois as $heroi){
    $resultados .= '<tr>';
    $resultados .= '<td>'.$heroi->id.'</td>';
    $resultados .= '<td>'.$heroi->nome.'</td>';
    $resultados .= '<td>'.$heroi->identidade_secreta.'</td>';
    $resultados .= '<td>';
    if($heroi->poderes){
        foreach($heroi->poderes as $poder){
            $resultados .= $poder->titulo .' <br> ';
        }
    } else {
        $resultados .= " --- ";
    }
    $resultados .= '</td>';
    $resultados .= '<td class="text-right">';
    $resultados .= '<a href="editar.php?id='.$heroi->id.'">';
    $resultados .= '<button type="button" class="btn btn-primary">Editar</button>';
    $resultados .= '</a>';
    $resultados .= '<a href="excluir.php?id='.$heroi->id.'">';
    $resultados .= '<button type="button" class="btn btn-danger">Excluir</button>';
    $resultados .= '</a>';
    $resultados .= '</td>';
    $resultados .= '</tr>';
  }

  if($resultados == ''){
      $resultados = '<tr>
                       <td colspan="5" class="text-center">
                              Nenhuma heroi encontrado
                       </td>
                    </tr>';
  }

?>

<main>

  <?=$mensagem?>

  <section>
    <a href="cadastrar.php">
      <button class="btn btn-success">Novo heroi</button>
    </a>
  </section>

  <section>

    <table class="table bg-light mt-3 table-striped">
        <thead>
          <tr class="centro">
            <th>ID</th>
            <th>Nome</th>
            <th>Idebtidade Secreta</th>
            <th>Poderes</th>
            <th class="text-right">Ações</th>
          </tr>
        </thead>
        <tbody>
            <?=$resultados?>
        </tbody>
    </table>
  </section>


</main>

