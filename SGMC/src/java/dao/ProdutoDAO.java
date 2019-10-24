/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
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
    
    public static void gravar(Produto produto) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into produto (idProduto, nome, codInterno, codBarra,"
                    + "unidadeMedida, precoCompra, peso, altura, comprimento, validade,"
                    + "qtdMinima, qtdAtual, qtdMaxima, idFornecedor, idCategoria)"
                    + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            comando.setInt(1, produto.getIdProduto());
            comando.setString(2, produto.getNome());
            comando.setInt(3, produto.getCodInterno());
            comando.setInt(4, produto.getCodBarra());
            comando.setString(5, produto.getUnidadeMedida());
            comando.setFloat(6, produto.getPrecoCompra());
            comando.setFloat(7, produto.getPeso());
            comando.setFloat(8, produto.getAltura());
            comando.setFloat(9, produto.getComprimento());
            comando.setString(10, produto.getValidade());
            comando.setInt(11, produto.getQtdMinima());
            comando.setInt(12, produto.getQtdAtual());
            comando.setInt(13, produto.getQtdMaxima());
            if (produto.getFornecedor() == null){
                comando.setNull(14, Types.INTEGER);
            } else {
                comando.setInt(14, produto.getFornecedor().getIdFornecedor());
            }
            if (produto.getCategoria() == null){
                comando.setNull(15, Types.INTEGER);
            } else {
                comando.setInt(15, produto.getCategoria().getIdCategoria());
            }
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    public static void excluir(Produto produto) throws ClassNotFoundException, 
            SQLException {
        Connection conexao = null;
        Statement comando= null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL =  "delete from produto where idProduto = " + 
                    produto.getIdProduto();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }
}
