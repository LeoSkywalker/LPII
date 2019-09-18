/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class Usuario {
    private int idUsuario;
    private String email;
    private String Senha;

    public Usuario(int idUsuario, String email, String Senha) {
        this.idUsuario = idUsuario;
        this.email = email;
        this.Senha = Senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }
       public static Usuario obterUsuario (int idUsuario) throws SQLException, ClassNotFoundException{
        return UsuarioDAO.obterUsuario(idUsuario);
    }
    
    public static List<Usuario> obterUsuarios() throws ClassNotFoundException, SQLException{
        return UsuarioDAO.obterUsuarios();
    }
}
