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
        OrdemServico ordemServico = new OrdemServico(rs.getInt("idOrdemSrv"),
        rs.getString("dataPedido"),
        rs.getString("situacao"),
        rs.getString("descricao"),
        rs.getInt("numOS"),
        null);
        ordemServico.setIdFornecedor(rs.getInt("idFornecedor"));
        
        return ordemServico;
    }
    
    public static void gravar(OrdemServico ordemServico) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into ordemservico (idOrdemSrv, dataPedido, situacao,"
                    + "descricao, numOS, idFornecedor)"
                    + "values (?,?,?,?,?,?)");
            comando.setInt(1, ordemServico.getIdOrdemSrv());
            comando.setString(2, ordemServico.getDataPedido());
            comando.setString(3, ordemServico.getSituacao());
            comando.setString(4, ordemServico.getDescricao());
            comando.setInt(5, ordemServico.getNumOS());
            if (ordemServico.getFornecedor() == null){
                comando.setNull(6, Types.INTEGER);
            } else {
                comando.setInt(6, ordemServico.getFornecedor().getIdFornecedor());
            }
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
        }
    }
    public static void excluir(OrdemServico ordemServico) throws ClassNotFoundException, 
            SQLException {
        Connection conexao = null;
        Statement comando= null;
        String stringSQL;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            stringSQL =  "delete from ordemservico where idOrdemSrv = " + 
                    ordemServico.getIdOrdemSrv();
        }finally{
            fecharConexao(conexao, comando);
        }
    }
}
