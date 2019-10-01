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
import model.Usuario;

/**
 *
 * @author Lucas Gama
 */
public class UsuarioDAO {
    public static List<Usuario> obterUsuarios() throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        Statement comando = null;
        List<Usuario> usuarios = new java.util.ArrayList<Usuario>();
        Usuario usuario = null;
        
        try{
            conexao= BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from usuario");
            
            while(rs.next()){
                usuario = instanciarUsuario(rs);
                usuarios.add(usuario);
            }
        }finally{
            fecharConexao(conexao, comando);
        }
        return usuarios;
    }
    
    public static Usuario obterUsuario(int idUsuario) throws SQLException, ClassNotFoundException{
     
            Connection conexao = null;
            Statement comando = null;
            Usuario usuario = null;
            try{
                conexao = BD.getConexao();
                comando = conexao.createStatement();
                ResultSet rs = comando.executeQuery("select * from usuario where idUsuario = " + idUsuario);
                rs.first();
                usuario = instanciarUsuario(rs);
            } finally{
                fecharConexao(conexao, comando);
            }
            return usuario;
    }

    private static Usuario instanciarUsuario(ResultSet rs) throws SQLException {
        Usuario usuario = new Usuario(rs.getInt("idUsuario"),
        rs.getString("nome"),
        rs.getString("email"),
        rs.getString("senha"));
        return usuario;
    }
    
    public static void gravar(Usuario usuario) throws ClassNotFoundException, SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            comando = conexao.prepareStatement(
                    "insert into ordemservico (nome, email, senha)"
                    + "values (?,?,?)");
            //sem atributo idUsuario model.Usuario
            comando.setString(1, usuario.getNome());
            comando.setString(2, usuario.getEmail());
            comando.setString(3, usuario.getSenha());
            comando.executeUpdate();
        }finally{
            fecharConexao(conexao, comando);
        }
    }
}
