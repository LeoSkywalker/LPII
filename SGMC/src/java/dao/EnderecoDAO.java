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
                cliente = instaciarEndereco(rs);
                enderecos.add(cliente);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return enderecos;
    
}

    private static Endereco instaciarEndereco(ResultSet rs) throws SQLException {
        Endereco endereco = new Endereco(rs.getInt("idEndereco"),
        rs.getString("logradouro"),
        rs.getInt("numero"),
        rs.getString("complemento"),
        rs.getString("cidade"),
        rs.getString("bairro"),
        rs.getString("uf"),
        rs.getString("cep"));
        return endereco;
    }
}
