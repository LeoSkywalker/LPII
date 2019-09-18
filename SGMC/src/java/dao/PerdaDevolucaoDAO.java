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
import model.PerdaDevolucao;

/**
 *
 * @author Lucas Gama
 */
public class PerdaDevolucaoDAO {
    public static List<PerdaDevolucao> obterPerdaDevolucoes() throws ClassNotFoundException, SQLException{
        
        Connection conexao = null;
        Statement comando = null;
        List<PerdaDevolucao> perdas = new java.util.ArrayList<PerdaDevolucao>();
        PerdaDevolucao perdaDevolucao = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from perdaDevolucao");
            
            while(rs.next()){
                perdaDevolucao =instanciarPerdaDevolucao(rs);
                perdas.add(perdaDevolucao);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return perdas;
    }
    
    public static PerdaDevolucao obterPerdaDevolucao(int idPerdaDevolucao) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            PerdaDevolucao perdaDevolucao = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from perdaDevolucao where idPerdaDevolucao = " + idPerdaDevolucao);
                rs.first();
                perdaDevolucao = instanciarPerdaDevolucao(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return perdaDevolucao;
    }

    private static PerdaDevolucao instanciarPerdaDevolucao(ResultSet rs) throws SQLException {
        PerdaDevolucao perdaDevolucao = new PerdaDevolucao(rs.getInt("idPerdaDevolucao"),
        rs.getString("tipo"),
        null,
        null);
        perdaDevolucao.setIdProduto(rs.getInt("idProduto"));
        perdaDevolucao.setIdVenda(rs.getInt("idVenda"));
        return perdaDevolucao;
    }
}
