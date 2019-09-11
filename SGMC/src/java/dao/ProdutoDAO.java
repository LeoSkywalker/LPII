/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import model.Produto;

/**
 *
 * @author Lucas Gama
 */
public class ProdutoDAO {
    public static List<Produto> obterProdutos() throws ClassNotFoundException, SQLException{
        
        Connection conexao = null;
        Statement comando = null;
        List<Produto> produtos = new java.util.ArrayList<Produto>();
        Produto produto = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from produto");
            
            while(rs.next()){
                produto = instanciarProduto(rs);
                produtos.add(produto);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return produtos;
    }

    private static Produto instanciarProduto(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
