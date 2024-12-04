<%@ page import="java.util.List" %>
<%@ page import="com.seuprojeto.agenda.model.Contato" %>
<%@ page import="com.seuprojeto.agenda.dao.ContatoDAO" %>
<%
    ContatoDAO dao = new ContatoDAO();
    List<Contato> Contato = dao.listarTodos();
%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <title>Lista de Contato</title>
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <body class="container mt-5">
        <h2>Lista de Contato</h2>
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Telefone</th>
                <th>Email</th>
                <th>Ações</th>
            </tr>
            </thead>
            <tbody>
            <%
                for (Contato contato : Contato) {
            %>
            <tr>
                <td><%= contato.getId() %></td>
                <td><%= contato.getNome() %></td>
                <td><%= contato.getTelefone() %></td>
                <td><%= contato.getEmail() %></td>
                <td>
                    <a href="editarContato.jsp?id=<%= contato.getId() %>"
                       class="btn btn-warning btn-sm">Editar</a>
                    <a href="ContatoServlet?acao=excluir&id=<%= contato.getId()
        %>" class="btn btn-danger btn-sm" onclick="return confirm('Deseja realmenteexcluir este contato?');">Excluir</a>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
        <a href="index.jsp" class="btn btn-link mt-3">Adicionar Novo Contato</a>
    </body>
</html>
