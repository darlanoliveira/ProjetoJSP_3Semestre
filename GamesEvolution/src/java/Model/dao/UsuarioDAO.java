/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.bean.UsuarioBean;
import Model.factory.ConnectionFactory;

public class UsuarioDAO {
    
    private Connection cnn;

            public UsuarioDAO() {
                     this.cnn = new ConnectionFactory().getConnection();
            }

            public List<UsuarioBean> buscarTodos(){
                    List<UsuarioBean> listUser = new ArrayList<>();
                    String sql = "select * from tb_usuario";
                    try {
                                PreparedStatement ps = cnn.prepareStatement(sql);
                                ResultSet rs = ps.executeQuery();
                                while(rs.next()){
                                        UsuarioBean userBean = new UsuarioBean(rs.getString("nome"),rs.getString("email"),rs.getString("usuario"),rs.getString("senha"));
                                        listUser.add(userBean);
                                }
                                rs.close();
                                ps.close();
                                cnn.close();
                    } catch (SQLException ex) {
                                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    return listUser;
            }
            
            public void cadastrar(UsuarioBean funcionario){
                    String sql = "insert into tb_usuario(nome,email,usuario,senha) values(?,?,?,?)";
                    try {
                                PreparedStatement ps = cnn.prepareStatement(sql);
                                ps.setString(1, funcionario.getNome());
                                ps.setString(2, funcionario.getEmail());  
                                ps.setString(3, funcionario.getUsuario());
                                ps.setString(4, funcionario.getSenha());
                                ps.executeUpdate();                                
                                ps.close();
                                cnn.close();                                
                    } catch (SQLException ex) {
                                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
            }
            
            public boolean autenticar(String usuario, String senha){
                    String sql = "select * from tb_usuario where usuario=? and senha=?";
                    try {
                                PreparedStatement ps = cnn.prepareStatement(sql);
                                ps.setString(1, usuario);
                                ps.setString(2, senha);                                                    
                                ResultSet rs = ps.executeQuery();
                                if(rs.next()){
                                        return true;
                                }else{
                                        return false;
                                }
                    } catch (SQLException ex) {
                                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    return false;
            } 
            
}
