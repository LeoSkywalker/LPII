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
import model.ItensOrdem;

/**
 *
 * @author leonardo
 */
public class ItensOrdemDAO {

    public static List<ItensOrdem> obterItensOrdens()
            throws ClassNotFoundException, SQLException {

        Connection conexao = null;
        Statement comando = null;
        List<ItensOrdem> itensOrdens = new java.util.ArrayList<ItensOrdem>();
        ItensOrdem itensOrdem = null;

        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensOrdem");

            while (rs.next()) {
                itensOrdem = instaciarItensOrdem(rs);
                itensOrdens.add(itensOrdem);
            }
        } finally {
            fecharConexao(conexao, comando);

        }
        return itensOrdens;

    }

    public static ItensOrdem obterItensOrdem(int idItensOrdem) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        Statement comando = null;
        ItensOrdem itensOrdem = null;
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from itensOrdem where idItensOrdem = " + idItensOrdem);
            rs.first();
            itensOrdem = instaciarItensOrdem(rs);
        } finally {
            fecharConexao(conexao, comando);
        }
        return itensOrdem;
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
}
