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
import java.util.ArrayList;
import java.util.List;
import model.Categoria;

/**
 *
 * @author leonardo
 */
public class CategoriaDAO {
    
    public static List<Categoria> obterCategorias() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Categoria> categorias = new ArrayList<Categoria>();
        Categoria categoria = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from categoria");
            
            while (rs.next()){
                categoria = instaciarCategoria(rs);
                categorias.add(categoria);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return categorias;
    }

    private static Categoria instaciarCategoria(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
