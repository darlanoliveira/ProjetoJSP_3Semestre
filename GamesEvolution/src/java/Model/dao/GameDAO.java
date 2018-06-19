/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.dao;

import Model.bean.GameBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.factory.ConnectionFactory;

/**
 *
 * @author Dr
 */
public class GameDAO {
    private Connection cnn;

            public GameDAO() {
                     this.cnn = new ConnectionFactory().getConnection();
            }

            public List<GameBean> buscarTodos(){
                    List<GameBean> listGame = new ArrayList<>();
                    String sql = "select * from games";
                    try {
                                PreparedStatement ps = cnn.prepareStatement(sql);
                                ResultSet rs = ps.executeQuery();
                                while(rs.next()){
                                        GameBean gameBean = new GameBean(rs.getString("nome"),rs.getString("desenvolvedora"),rs.getString("plataforma"),rs.getFloat("preco"),rs.getString("quantidade"),rs.getString("descricao"));
                                        listGame.add(gameBean);
                                }
                                rs.close();
                                ps.close();
                                cnn.close();
                    } catch (SQLException ex) {
                                Logger.getLogger(GameDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    return listGame;
            }
            
            public void cadastrar(GameBean game){
                    String sql = "insert into games(nome,desenvolvedora,quantidade,preco,plataforma,descricao) values(?,?,?,?,?,?)";
                    try {
                                PreparedStatement ps = cnn.prepareStatement(sql);
                                ps.setString(1, game.getNome());
                                ps.setString(2, game.getDesenvolvedora());  
                                ps.setString(3, game.getQuantidade()); 
                                ps.setFloat(4, game.getPreco()); 
                                ps.setString(5, game.getPlataforma()); 
                                ps.setString(6, game.getDescricao()); 
                                ps.executeUpdate();                                
                                ps.close();
                                cnn.close();                                
                    } catch (SQLException ex) {
                                Logger.getLogger(GameDAO.class.getName()).log(Level.SEVERE, null, ex);
                    }
            }
}
