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

    private static Venda instanciarVenda(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
