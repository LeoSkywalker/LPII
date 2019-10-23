/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ItensVendaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author leonardo
 */
public class ItensVenda {
    
    private int idItensVenda;
    private int quantidade;
    private float precoUnitario;
    private Venda venda;
    private int idVenda;
    private Produto produto;
    private int idProduto;

    public ItensVenda(int idItensVenda, int quantidade, float precoUnitario, 
            Venda venda, Produto produto) {
        this.idItensVenda = idItensVenda;
        this.quantidade = quantidade;
        this.precoUnitario = precoUnitario;
        this.venda = venda;
        this.produto = produto;
    }

    public int getIdItensVenda() {
        return idItensVenda;
    }

    public void setIdItensVenda(int idItensVenda) {
        this.idItensVenda = idItensVenda;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public float getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(float precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public Venda getVenda()  throws SQLException, ClassNotFoundException {
        if ((this.idVenda != 0) && (this.venda == null)){
            this.venda = Venda.obterVenda(this.idVenda);
        } 
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }

    public int getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(int idVenda) {
        this.idVenda = idVenda;
    }

    public Produto getProduto ()  throws SQLException, ClassNotFoundException {
        if ((this.idProduto != 0) && (this.produto == null)){
            this.produto = Produto.obterProduto(this.idProduto);
        } 
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }
    
     public static ItensVenda obterItensVenda (int idItensVenda) throws SQLException, ClassNotFoundException{
        return ItensVenda.obterItensVenda(idItensVenda);
    }
    
    public static List<ItensVenda> obterItensVendas() throws ClassNotFoundException, SQLException{
        return ItensVenda.obterItensVendas();
    }
    
    public void gravar() throws SQLException, ClassNotFoundException {
        ItensVendaDAO.gravar(this);
    }
    public void excluir() throws ClassNotFoundException, SQLException{
        ItensVendaDAO.excluir(this);
    }
}
