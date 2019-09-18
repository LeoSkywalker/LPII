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
    
    public static Produto obterProduto(int idProduto) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Produto produto = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from produto where idProduto = " + idProduto);
                rs.first();
                produto = instanciarProduto(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return produto;
    }

    private static Produto instanciarProduto(ResultSet rs) throws SQLException {
        Produto produto = new Produto(rs.getInt("idProduto"),
        rs.getString("nome"),
        rs.getInt("codInterno"),
        rs.getInt("codBarra"),
        rs.getString("unidadeMedida"),
        rs.getFloat("precoCompra"),
        rs.getFloat("peso"),
        rs.getFloat("altura"),
        rs.getFloat("comprimento"),
        rs.getString("validade"),
        rs.getInt("qtdMinima"),
        rs.getInt("qtdAtual"),
        rs.getInt("qtdMaxima"),
        null,
        null);
        produto.setIdFornecedor(rs.getInt("idFornecedor"));
        produto.setIdCategoria(rs.getInt("idCategoria"));
        return produto;
    }
}
