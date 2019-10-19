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
                cliente = instanciarCliente(rs);
                clientes.add(cliente);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return clientes;
        }
     public static Cliente obterCliente(int idCliente) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Cliente cliente = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from cliente where idCliente = " + idCliente);
                rs.first();
                cliente = instanciarCliente(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return cliente;
    }


    private static Cliente instanciarCliente(ResultSet rs) throws SQLException {
       Cliente cliente = new Cliente (rs.getInt("idCliente"),
       rs.getString("cnpj"),
       rs.getString("razaoSocial"),
       rs.getString("inscricaoEstadual"),
       rs.getString("nome"),
       rs.getString("cpf"),
       rs.getString("rg"),
       rs.getString("telefone"),
       rs.getString("celular"),
       rs.getString("email"),
       rs.getString("dataNascimento"),
       rs.getString("estadoCivil"),
       rs.getString("sexo"),
       null);        
       cliente.setIdEndereco(rs.getInt("idEndereco"));     
       return cliente;
    }
    
    public static void gravar(Cliente cliente) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
            "insert into cliente (idCliente, cnpj, razaoSocial, inscricaoEstadual,"
             +" nome, cpf, rg, telefone, celular, email, dataNascimento, estadoCivil,"
            + " sexo, idEndereco) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            comando.setInt(1, cliente.getIdCliente());
            comando.setString(2, cliente.getCnpj());
            comando.setString(3, cliente.getRazaoSocial());
            comando.setString(4, cliente.getInscricaoEstadual());
            comando.setString(5, cliente.getNome());
            comando.setString(6, cliente.getCpf());
            comando.setString(7, cliente.getRg());
            comando.setString(8, cliente.getTelefone());
            comando.setString(9, cliente.getCelular());
            comando.setString(10, cliente.getEmail());
            comando.setString(11, cliente.getDataNascimento());
            comando.setString(12, cliente.getEstadoCivil());
            comando.setString(13, cliente.getSexo());
            
            if(cliente.getEndereco()==null){
                comando.setNull(14, Types.INTEGER);
            }else{
                comando.setInt(14, cliente.getEndereco().getIdEndereco());
            }
            comando.executeUpdate();
            }finally{
            fecharConexao(conexao, comando);
        }
    }
}
