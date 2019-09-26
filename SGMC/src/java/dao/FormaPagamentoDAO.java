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
import model.FormaPagamento;

/**
 *
 * @author leonardo
 */
public class FormaPagamentoDAO {
    
    public static List<FormaPagamento> obterFormasPagamentos() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<FormaPagamento> formasPagamento = new java.util.ArrayList<FormaPagamento>();
        FormaPagamento formaPagamento = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from formaPagamento");
            
            while (rs.next()){
                formaPagamento = instaciarFormaPagamento(rs);
                formasPagamento.add(formaPagamento);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return formasPagamento;
    
}
     public static FormaPagamento obterFormaPagamento(int idFormaPagamento) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            FormaPagamento formaPagamento = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from formaPagamento where idFormaPagamento = " + idFormaPagamento);
                rs.first();
                formaPagamento = instaciarFormaPagamento(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return formaPagamento;
    }


    private static FormaPagamento instaciarFormaPagamento(ResultSet rs) throws SQLException {
        FormaPagamento pagamento = new FormaPagamento(rs.getInt("idFormaPgto"),
        rs.getString("nome"),
        rs.getInt("conta"),
        rs.getInt("agencia"),
        rs.getString("nomeBanco"),
        rs.getString("tipoConta"),
        rs.getInt("numMaxParcelas"),
        rs.getInt("intervaloParcelas"),
        rs.getDouble("taxaBanco"),
        rs.getDouble("taxaOperadora"),
        rs.getDouble("multaAtraso"),
        rs.getString("situacaoConfirmacao"));
        return pagamento;
    }
}
