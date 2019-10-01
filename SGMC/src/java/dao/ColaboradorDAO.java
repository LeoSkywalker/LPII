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
import model.Colaborador;

/**
 *
 * @author leonardo
 */
public class ColaboradorDAO {
    public static List<Colaborador> obterColaboradores() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Colaborador> colaboradores = new java.util.ArrayList<Colaborador>();
        Colaborador colaborador = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from colaborador, usuario where colaborador.idColaborador=usuario.idUsuario");
            
            while (rs.next()){
                colaborador = instaciarColaborador(rs);
                colaboradores.add(colaborador);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return colaboradores;   
}
     public static Colaborador obterColaborador(int idColaborador) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Colaborador colaborador = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from colaborador where idColaborador = " + idColaborador);
                rs.first();
                colaborador = instaciarColaborador(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return colaborador;
    }


    private static Colaborador instaciarColaborador(ResultSet rs) throws SQLException {
       Colaborador colaborador = new Colaborador(rs.getInt("idColaborador"),
       rs.getString("cpf"),
       rs.getString("rg"),
       rs.getString("dataNascimento"),
       rs.getString("telefone"),
       rs.getString("celular"),
       rs.getString("estadoCivil"),
       rs.getString("sexo"),
       rs.getInt("idUsuario"),
       rs.getString("nome"),
       rs.getString("email"),
       rs.getString("senha"),
       null);       
       colaborador.setIdEndereco(rs.getInt("idEndereco"));  
       return colaborador;
    }
    public static void gravar(Colaborador colaborador) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
            "insert into colaborador (idColaborador, cpf, rg, dataNascimento, telefone,"
            +" celular, estadoCivil, sexo) values (?,?,?,?,?,?,?,?,?)");
            comando.setInt(1, colaborador.getIdColaborador());
            comando.setString(2, colaborador.getCpf());
            comando.setString(3, colaborador.getRg());
            comando.setString(4, colaborador.getDataNascimento());
            comando.setString(5, colaborador.getTelefone());
            comando.setString(6, colaborador.getCelular());
            comando.setString(7, colaborador.getEstadoCivil());
            comando.setString(8, colaborador.getSexo());
            //comando.setInt(9, colaborador.getIdEndereco());
            
            if(colaborador.getEndereco()==null){
                comando.setNull(8, Types.INTEGER);
            }else{
                comando.setInt(8, colaborador.getEndereco().getIdEndereco());
            }
            comando.executeUpdate();
            }finally{
            fecharConexao(conexao, comando);
        }
    }
}
