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
import model.Venda;

/**
 *
 * @author Lucas Gama
 */
public class VendaDAO {
    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException{
        
        Connection conexao = null;
        Statement comando = null;
        List<Venda> vendas = new java.util.ArrayList<Venda>();
        Venda venda = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from venda");
            
            while(rs.next()){
                venda = instanciarVenda(rs);
                vendas.add(venda);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return vendas;
    }
    
    public static Venda obterVenda(int idVenda) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Venda venda = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from venda where idVenda = " + idVenda);
                rs.first();
                venda = instanciarVenda(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return venda;
    }

    private static Venda instanciarVenda(ResultSet rs) throws SQLException {
        Venda venda = new Venda(rs.getInt("idVenda"),
        rs.getString("dataVenda"),
        //rs.getInt("qtd"),
        //rs.getFloat("precoUnitario"),
        rs.getFloat("subTotal"),
        rs.getString("codBarra"),
        rs.getFloat("valorDesconto"),
        rs.getString("situacao"),
        null,
        null,
        null/*,
        null*/);
        venda.setIdUsuario(rs.getInt("idUsuario"));
        venda.setIdFormaPgto(rs.getInt("idFormaPgto"));
        venda.setIdCliente(rs.getInt("idCliente"));
        //venda.setIdProduto(rs.getInt("idProduto"));
        return venda;
    }
}
