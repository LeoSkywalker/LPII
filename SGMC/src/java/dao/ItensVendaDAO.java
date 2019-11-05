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
import model.ItensVenda;

/**
 *
 * @author leonardo
 */
public class ItensVendaDAO {

    public static List<ItensVenda> obterItensVendas()
            throws ClassNotFoundException, SQLException {

        Connection conexao = null;
        Statement comando = null;
        List<ItensVenda> itensVendas = new java.util.ArrayList<ItensVenda>();
        ItensVenda itensVenda = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensVenda join"
                    + " venda on itensVenda.idVenda = venda.idVenda");

            while (rs.next()) {
                itensVenda = instaciarItensVenda(rs);
                itensVendas.add(itensVenda);
            }
        } finally {
            fecharConexao(conexao, comando);

        }
        return itensVendas;

    }

    public static ItensVenda obterItensVenda(int idItensVenda) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ItensVenda itensVenda = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensVenda join"
                    + " venda on itensVenda.idVenda = venda.idVenda "
                    + "where idItensVenda = " + idItensVenda);
            rs.first();
            itensVenda = instaciarItensVenda(rs);
        } finally {
            fecharConexao(conexao, comando);
        }
        return itensVenda;
    }

    private static ItensVenda instaciarItensVenda(ResultSet rs) throws SQLException {
        ItensVenda itensVenda = new ItensVenda(rs.getInt("idItensVenda"),
                rs.getInt("quantidade"),
                rs.getFloat("precoUnitario"),
                null,
                null);
        itensVenda.setIdVenda(rs.getInt("idVenda"));
        itensVenda.setIdProduto(rs.getInt("idProduto"));

        return itensVenda;
    }
    
    public static void gravar(ItensVenda itensVenda) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
            "insert into itensVenda (idItensVenda, quantidade, precoUnitario,"
            +"idVenda, idProduto)"
            + "values (?,?,?,?,?)");
            comando.setInt(1, itensVenda.getIdItensVenda());
            comando.setInt(2, itensVenda.getQuantidade());
            comando.setFloat(3, itensVenda.getPrecoUnitario());
            
            if(itensVenda.getVenda()== null){
                comando.setNull(4, Types.INTEGER);
            }else{
                comando.setInt(4, itensVenda.getVenda().getIdVenda());
            }
            if(itensVenda.getProduto()== null){
                comando.setNull(5, Types.INTEGER);
            }else{
                comando.setInt(5, itensVenda.getProduto().getIdProduto());
            }
            comando.executeUpdate();
            }finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public static void excluir(ItensVenda itensVenda) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from itensVenda where idItensVenda = "
                    + itensVenda.getIdItensVenda();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    
    public static void alterar(ItensVenda itensVenda) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update itensVenda set "
                    + "precoUnitario = " + itensVenda.getPrecoUnitario() + ","
                    + "quantidade = " + itensVenda.getQuantidade() + ","
                    + "idProduto = ";
            if (itensVenda.getProduto() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + itensVenda.getProduto().getIdProduto();
            }
            
            /*if(itensVenda.getVenda() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + itensVenda.getVenda().getIdVenda();
            }*/
            
            stringSQL = stringSQL + " where idItensVenda = " + itensVenda.getIdItensVenda()
                    + " and idVenda = " + itensVenda.getVenda().getIdVenda();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }

}
