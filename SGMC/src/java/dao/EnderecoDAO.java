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
import java.util.List;
import model.Endereco;

/**
 *
 * @author leonardo
 */
public class EnderecoDAO {
    
    public static List<Endereco> obterEnderecos() throws ClassNotFoundException, SQLException{
        
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

     public static Endereco obterEndereco(int idEndereco) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Endereco endereco = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from endereco where idEndereco = " + idEndereco);
                rs.first();
                endereco = instaciarEndereco(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return endereco;
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
    
    public static void gravar(Endereco endereco) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement("insert into endereco (idEndereco"
                    + ", logradouro, numero, complemento, cidade, bairro, uf"
                    + "cep) values (?,?,?,?,?,?,?)");
            comando.setInt(1, endereco.getIdEndereco());
            comando.setString(2, endereco.getLogradouro());
            comando.setInt(3, endereco.getNumero());
            comando.setString(4, endereco.getComplemento());
            comando.setString(5, endereco.getCidade());
            comando.setString(6, endereco.getBairro());
            comando.setString(7, endereco.getUf());
            comando.setString(8, endereco.getCep());
            
            comando.executeUpdate();
        }
        finally{
            fecharConexao(conexao, comando);
        }
    }
}
