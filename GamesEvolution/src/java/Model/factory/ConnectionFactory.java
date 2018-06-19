package Model.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dr
 */
public class ConnectionFactory {
    private final String URL_CONEXAO = "jdbc:mysql://localhost/games_evolution"; 
    private final String USUARIO = "root";
    private final String SENHA = "";
    private Connection conexao = null;  
    
    public Connection getConnection(){
        try {        
                                    Class.forName("com.mysql.jdbc.Driver");
                                    conexao = DriverManager.getConnection(URL_CONEXAO, USUARIO, SENHA);
                        } catch (SQLException ex) {
                                    Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
                                    System.out.println("Não foi possível se conectar com o banco em ConnectionFactory: " + ex.getMessage());
                                    throw new RuntimeException("Erro ao abrir uma conexão em ConnectionFactory!",ex) ;
                        } catch (ClassNotFoundException ex) {
                                    Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
                                    System.out.println("Classe não encontrada em  ConnectionFactory: " + ex.getMessage());
                                    throw new RuntimeException("Erro ao abrir uma conexão em ConnectionFactory!",ex) ;
                        }
                        return conexao;
            }
        
}

