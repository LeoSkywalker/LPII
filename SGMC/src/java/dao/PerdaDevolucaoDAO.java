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
    public static List<PerdaDevolucao> obterPerdas() throws ClassNotFoundException, SQLException{
        
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

    private static PerdaDevolucao instanciarPerdaDevolucao(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
