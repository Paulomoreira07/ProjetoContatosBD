package com.seuprojeto.agenda;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionFactory {
    // URL, usuário e senha do banco de dados
    private static final String URL = "jdbc:postgresql://localhost:5432/agenda";
    private static final String USER = "agenda_user";
    private static final String PASSWORD = "senha_forte";
    // Método para obter a conexão com o banco
    public static Connection getConnection() throws SQLException {
        try {
            // Carrega o driver do PostgreSQL (opcional para versões modernas do JDBC)
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver do PostgreSQL não encontrado!", e);
        }
        // Retorna a conexão
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}

