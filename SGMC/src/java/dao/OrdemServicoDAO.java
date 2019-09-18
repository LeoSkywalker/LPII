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
    
     public static OrdemServico obterOrdemServico(int idOrdemServico) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            OrdemServico ordemServico = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from ordemServico where idOrdemServico = " + idOrdemServico);
                rs.first();
                ordemServico = instanciarOrdemServico(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return ordemServico;
    }


    private static OrdemServico instanciarOrdemServico(ResultSet rs) throws SQLException {
        OrdemServico ordemServico = new OrdemServico(rs.getInt("idOrdemServico"),
        rs.getInt("qtd"),
        rs.getString("dataPedido"),
        rs.getString("situacao"),
        null,
        null);
        ordemServico.setIdFornecedor(rs.getInt("idFornecedor"));
        ordemServico.setIdProduto(rs.getInt("idProduto"));
        return ordemServico;
    }
}
