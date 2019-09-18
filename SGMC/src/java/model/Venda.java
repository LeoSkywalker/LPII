/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.VendaDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class Venda {
    
    private int idVenda;
    private String dataVenda;
    private int qtd;
    private float precoUnitario;
    private float subTotal;
    private String codBarra;
    private float valorDesconto;
    private String situacao;
    private Usuario usuario;
    private FormaPagamento formaPagamento;
    private Cliente cliente;
    private Produto produto;
    private int idUsuario;
    private int idFormaPgto;
    private int idCliente;
    private int idProduto;

    public Venda(int idVenda, String dataVenda, int qtd, float precoUnitario, float subTotal, String codBarra, float valorDesconto, String situacao, Usuario usuario, FormaPagamento formaPagamento, Cliente cliente, Produto produto) {
        this.idVenda = idVenda;
        this.dataVenda = dataVenda;
        this.qtd = qtd;
        this.precoUnitario = precoUnitario;
        this.subTotal = subTotal;
        this.codBarra = codBarra;
        this.valorDesconto = valorDesconto;
        this.situacao = situacao;
        this.usuario = usuario;
        this.formaPagamento = formaPagamento;
        this.cliente = cliente;
        this.produto = produto;
    }

    public int getIdVenda() {
        return idVenda;
    }

    public void setIdVenda(int idVenda) {
        this.idVenda = idVenda;
    }

    public String getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(String dataVenda) {
        this.dataVenda = dataVenda;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public float getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(float precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }

    public String getCodBarra() {
        return codBarra;
    }

    public void setCodBarra(String codBarra) {
        this.codBarra = codBarra;
    }

    public float getValorDesconto() {
        return valorDesconto;
    }

    public void setValorDesconto(float valorDesconto) {
        this.valorDesconto = valorDesconto;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public Usuario getUsuario() throws SQLException, ClassNotFoundException {
        if ((this.idUsuario != 0) && (this.usuario == null)){
            this.usuario = Usuario.obterUsuario(this.idUsuario);
        }
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public FormaPagamento getFormaPagamento() throws SQLException, ClassNotFoundException {
        if ((this.idFormaPgto != 0) && (this.formaPagamento == null)){
            this.formaPagamento = FormaPagamento.obterFormaPagamento(this.idFormaPgto);
        }
        return formaPagamento;
    }

    public void setFormaPagamento(FormaPagamento formaPagamento) {
        this.formaPagamento = formaPagamento;
    }

    public Cliente getCliente() throws SQLException, ClassNotFoundException {
        if ((this.idCliente != 0) && (this.cliente == null)){
            this.cliente = Cliente.obterCliente(this.idCliente);
        }
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Produto getProduto() throws SQLException, ClassNotFoundException {
        if ((this.idProduto != 0) && (this.produto == null)){
            this.produto = Produto.obterProduto(this.idProduto);
        }
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdFormaPgto() {
        return idFormaPgto;
    }

    public void setIdFormaPgto(int idFormaPgto) {
        this.idFormaPgto = idFormaPgto;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public static Venda obterVenda (int idVenda) throws SQLException, ClassNotFoundException{
        return VendaDAO.obterVenda(idVenda);
    }
    
    public static List<Venda> obterVendas() throws ClassNotFoundException, SQLException{
        return VendaDAO.obterVendas();
    }
    
}
