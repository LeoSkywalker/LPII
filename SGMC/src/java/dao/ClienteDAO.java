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
import model.Admin;
import model.Cliente;

/**
 *
 * @author leonardo
 */
public class ClienteDAO {
    public static List<Cliente> obterClientes() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Cliente> clientes = new java.util.ArrayList<Cliente>();
        Cliente cliente = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from cliente");
            
            while (rs.next()){
                cliente = instaciarCliente(rs);
                clientes.add(cliente);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return clientes;
        }

    private static Cliente instaciarCliente(ResultSet rs) throws SQLException {
       Cliente cliente = new Cliente (rs.getInt("idCliente"),
       rs.getString("nome"),
       rs.getString("cpf"),
       rs.getString("rg"),
       rs.getString("dataNascimento"),
       rs.getString("telefone"),
       rs.getString("celular"),
       rs.getString("estadoCivil"),
       rs.getBoolean("sexo"),
       rs.getString("email"),
       null);        
       cliente.setIdEndereco(rs.getInt("idEndereco"));
       
       return cliente;
    }
}
