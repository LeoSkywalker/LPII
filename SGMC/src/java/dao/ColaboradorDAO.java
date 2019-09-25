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
       rs.getBoolean("sexo"),
       rs.getInt("idUsuario"),
       rs.getString("nome"),
       rs.getString("email"),
       rs.getString("senha"),
       null);       
       colaborador.setIdEndereco(rs.getInt("idEndereco"));  
       return colaborador;
    }
}
