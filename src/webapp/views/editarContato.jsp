<%@ page import="com.seuprojeto.agenda.model.Contato" %>
<%@ page import="com.seuprojeto.agenda.dao.ContatoDAO" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ContatoDAO dao = new ContatoDAO();
    Contato contato = dao.buscarPorId(id);
%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <title>Editar Contato</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="container mt-5">
        <h2>Editar Contato</h2>
        <form action="ContatoServlet" method="post">
            <input type="hidden" name="id" value="<%= contato.getId() %>">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" name="nome" class="form-control" id="nome"
                       value="<%= contato.getNome() %>" required>
            </div>
            <div class="form-group">
                <label for="telefone">Telefone:</label>
                <input type="text" name="telefone" class="form-control"
                       id="telefone" value="<%= contato.getTelefone() %>">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" class="form-control" id="email"
                       value="<%= contato.getEmail() %>">
            </div>
            <button type="submit" name="acao" value="atualizar" class="btn btnprimary">Atualizar</button>
            <a href="listarContato.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </body>
</html>