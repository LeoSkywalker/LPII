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
import model.OrdemServico;

/**
 *
 * @author Lucas Gama
 */
public class OrdemServicoDAO {
    public static List<OrdemServico> obterOrdemServicos() throws ClassNotFoundException, SQLException{
        
        Connection conexao = null;
        Statement comando = null;
        List<OrdemServico> ordemServicos = new java.util.ArrayList<OrdemServico>();
        OrdemServico ordemServico = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from ordemServico");
            
            while(rs.next()){
                ordemServico = instanciarOrdemServico(rs);
                ordemServicos.add(ordemServico);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return ordemServicos;
    }

    private static OrdemServico instanciarOrdemServico(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
