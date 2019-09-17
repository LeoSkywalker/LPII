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
import model.Fornecedor;

/**
 *
 * @author leonardo
 */
public class FornecedorDAO {
    public static List<Fornecedor> obterFornecedores() 
            throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Fornecedor> fornecedores = new java.util.ArrayList<Fornecedor>();
        Fornecedor fornecedor = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from fornecedores");
            
            while (rs.next()){
                fornecedor = instaciarFornecedor(rs);
                fornecedores.add(fornecedor);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return fornecedores;
    
}

    private static Fornecedor instaciarFornecedor(ResultSet rs) throws SQLException {
        Fornecedor fornecedor = new Fornecedor(rs.getInt("idFornecedor"),
        rs.getString("nomeFantasia"),
        rs.getString("cnpj"),
        rs.getString("nomeRepresentante"),
        rs.getString("email"),
        rs.getString("telefone"),
        null);
        fornecedor.setIdEndereco(rs.getInt("idEndereco"));
        
        return fornecedor;
    }
    
}