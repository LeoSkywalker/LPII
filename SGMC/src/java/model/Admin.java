/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.AdminDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class Admin extends Usuario{
    
    private int idAdmin;
    private String nome;

    public Admin(int idAdmin, String nome, int id, String email, String Senha) {
        super(id, email, Senha);
        this.idAdmin = idAdmin;
        this.nome = nome;
    }

    public int getIdAdmin() {
        return idAdmin;
    }

    public void setIdAdmin(int idAdmin) {
        this.idAdmin = idAdmin;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public static Admin obterAdmin (int idAdmin) throws SQLException, ClassNotFoundException{
        return AdminDAO.obterAdmin(idAdmin);
    }
    
    public static List<Admin> obterAdmins() throws ClassNotFoundException, SQLException{
        return AdminDAO.obterAdmins();
    }
        
}
