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
import model.Endereco;

/**
 *
 * @author leonardo
 */
public class EnderecoDAO {
    
    public static List<Endereco> obterEndereco() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Endereco> enderecos = new java.util.ArrayList<Endereco>();
        Endereco cliente = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from endereco");
            
            while (rs.next()){
                cliente = instaciarAdmin(rs);
                enderecos.add(cliente);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return enderecos;
    
}

    private static Endereco instaciarAdmin(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
