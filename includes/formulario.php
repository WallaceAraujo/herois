<main>

    <section>
        <a href="index.php">
            <button class="btn btn-success">Voltar</button>
        </a>
    </section>

    <h2 class="mt-3"><?= TITLE ?></h2>

    <form method="post">

        <div class="form-group">
            <label>Nome</label>
            <input type="text" class="form-control" name="nome" value="<?= $obHeroi->nome ?>">
        </div>

        <div class="form-group">
            <label>Identidade Secreta</label>
            <input type="text" class="form-control" name="identidade_secreta"
                   value="<?= $obHeroi->identidade_secreta ?>">
        </div>

        <div class="form-group">
            <label>Poderes</label>
            <input type="text" class="form-control" name="poderes" value="<?= $obHeroi->poderes ?>">
            <p>Separe os poderes com ","</p>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-success">Enviar</button>
        </div>

    </form>

</main>