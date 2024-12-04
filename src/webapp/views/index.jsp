<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <title>Agenda de Contatos</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="container mt-5">
        <h2>Adicionar Novo Contato</h2>
        <form action="ContatoServlet" method="post">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" class="form-control" id="nome"
                       required>
            </div>
            <div class="form-group">
                <label for="telefone">Telefone:</label>
                <input type="text" name="telefone" class="form-control"
                       id="telefone">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" class="form-control" id="email">
            </div>
            <button type="submit" name="acao" value="inserir" class="btn btnprimary">Salvar</button>
        </form>
        <a href="listarContato.jsp" class="btn btn-link mt-3">Listar Contatos</a>
    </body>
</html>