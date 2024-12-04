package com.seuprojeto.agenda.servlet;
import com.seuprojeto.agenda.dao.ContatoDAO;
import com.seuprojeto.agenda.model.Contato;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
public class ContatoServlet extends HttpServlet {
    private ContatoDAO contatoDAO = new ContatoDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse
            response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if ("inserir".equals(acao)) {
            Contato contato = new Contato();
            contato.setNome(request.getParameter("nome"));
            contato.setTelefone(request.getParameter("telefone"));
            contato.setEmail(request.getParameter("email"));
            try {
                contatoDAO.inserir(contato);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("listarContato.jsp");
        } else if ("atualizar".equals(acao)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Contato contato = new Contato();
            contato.setId(id);
            contato.setNome(request.getParameter("nome"));
            contato.setTelefone(request.getParameter("telefone"));
            contato.setEmail(request.getParameter("email"));
            try {
                contatoDAO.atualizar(contato);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("listarContato.jsp");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse
            response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if ("excluir".equals(acao)) {
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                contatoDAO.excluir(id);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("listarContato.jsp");
        }
    }
}