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
import java.util.ArrayList;
import java.util.List;
import model.ItensOrdem;

public class ItensOrdemDAO {

    public static ArrayList<ItensOrdem> obterItensOrdens()
            throws ClassNotFoundException, SQLException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<ItensOrdem> itensOrdens = new java.util.ArrayList<ItensOrdem>();
        ItensOrdem itensOrdem = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensOrdem "
                    + "join ordemServico on itensOrdem.idOrdemSrv = ordemServico.idOrdemSrv");

            while (rs.next()) {
                itensOrdem = instaciarItensOrdem(rs);
                itensOrdens.add(itensOrdem);
            }
        } finally {
            fecharConexao(conexao, comando);

        }
        return itensOrdens;
    }

    public static ArrayList<ItensOrdem> obterItensOrdem(int idOrdemSrv) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ArrayList<ItensOrdem> itensOrdens = new java.util.ArrayList<ItensOrdem>();
        ItensOrdem itensOrdem = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensOrdem "
                    + "join ordemServico on itensOrdem.idOrdemSrv = ordemServico.idOrdemSrv "
                    + "where ordemServico.idOrdemSrv = " + idOrdemSrv);
            while (rs.next()) {
                itensOrdem = instaciarItensOrdem(rs);
                itensOrdens.add(itensOrdem);
            }
        } finally {
            fecharConexao(conexao, comando);
        }
        return itensOrdens;
    }
    
    public static ItensOrdem obterItemOrdem(int idItensOrdem) throws ClassNotFoundException, SQLException {
        Connection conexao = null;
        Statement comando = null;
        ItensOrdem itemOrdem = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensOrdem where"
                    + " itensOrdem.idItensOrdem = " + idItensOrdem);
            rs.first();
            itemOrdem = instaciarItensOrdem(rs);
        } finally {
            fecharConexao(conexao, comando);

        }
        return itemOrdem;
    }

    private static ItensOrdem instaciarItensOrdem(ResultSet rs) throws SQLException {
        ItensOrdem itensOrdem = new ItensOrdem(rs.getInt("idItensOrdem"),
                rs.getInt("quantidade"),
                null,
                null);
        itensOrdem.setIdProduto(rs.getInt("idProduto"));
        itensOrdem.setIdOrdemSrv(rs.getInt("idOrdemSrv"));

        return itensOrdem;
    }
    
    public static void gravar(ItensOrdem itensOrdem) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement("insert into itensOrdem"
                    + " (idItensOrdem, quantidade, idProduto, idOrdemSrv) "
                    + "values (?,?,?,?)");
            comando.setInt(1, itensOrdem.getIdItensOrdem());
            comando.setInt(2, itensOrdem.getQuantidade());
            
            if(itensOrdem.getProduto()== null){
                comando.setNull(3, Types.INTEGER);
            }else{
                comando.setInt(3, itensOrdem.getProduto().getIdProduto());
            }
            
            if(itensOrdem.getOrdemServico() == null){
                comando.setNull(4, Types.INTEGER);
            }else{
                comando.setInt(4, itensOrdem.getOrdemServico().getIdOrdemSrv());
            }         
            comando.executeUpdate();
        }
        finally{
            fecharConexao(conexao, comando);
        }
    }
    public static void excluir(ItensOrdem itensOrdem) throws 
            ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "delete from itensOrdem where idItensOrdem = " 
                    + itensOrdem.getIdItensOrdem();
            comando.execute(stringSQL);
        }finally {
            fecharConexao(conexao, comando);
                    
        }
    }
    
    public static void alterar(ItensOrdem itensOrdem) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL = "update itensOrdem set "
                    + "quantidade = " + itensOrdem.getQuantidade() + ","
                    + "idProduto = ";
            if (itensOrdem.getProduto() == null){
                stringSQL = stringSQL + null;
            }else{
                stringSQL = stringSQL + itensOrdem.getProduto().getIdProduto();
            }
            stringSQL = stringSQL + " where idItensOrdem = " + itensOrdem.getIdItensOrdem()
                    + " and idOrdemSrv = " + itensOrdem.getOrdemServico().getIdOrdemSrv();
            comando.execute(stringSQL);
        }finally{
            fecharConexao(conexao, comando);
        }
    }
}
