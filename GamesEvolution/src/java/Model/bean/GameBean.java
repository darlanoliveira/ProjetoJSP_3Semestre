/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.bean;

/**
 *
 * @author Dr
 */
public class GameBean {
    private int cod_game;
    private String desenvolvedora;
    private String nome;
    private String plataforma;
    private float preco;
    private String quantidade;
    private String descricao;

       
    
       public GameBean(String nome, String desenvolvedora,String quantidade,float preco,String plataforma,String descricao) {
        this.nome = nome;
        this.desenvolvedora = desenvolvedora;
        this.quantidade = quantidade;
        this.preco = preco;
        this.plataforma = plataforma;
        this.descricao = descricao;
        
      
    }  

     
    /**
     * @return the cod_game
     */
    public int getCod_game() {
        return cod_game;
    }

    /**
     * @param cod_game the cod_game to set
     */
    public void setCod_game(int cod_game) {
        this.cod_game = cod_game;
    }

    /**
     * @return the desenvolvedora
     */
    public String getDesenvolvedora() {
        return desenvolvedora;
    }

    /**
     * @param desenvolvedora the desenvolvedora to set
     */
    public void setDesenvolvedora(String desenvolvedora) {
        this.desenvolvedora = desenvolvedora;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the plataforma
     */
    public String getPlataforma() {
        return plataforma;
    }

    /**
     * @param plataforma the plataforma to set
     */
    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    /**
     * @return the preco
     */
    public float getPreco() {
        return preco;
    }

    /**
     * @param preco the preco to set
     */
    public void setPreco(float preco) {
        this.preco = preco;
    }

    /**
     * @return the quantidade
     */
    public String getQuantidade() {
        return quantidade;
    }

    /**
     * @param quantidade the quantidade to set
     */
    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    
    
}
