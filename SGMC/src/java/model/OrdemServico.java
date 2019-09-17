/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Lucas Gama
 */
public class OrdemServico {
    private int idOrdemSrv;
    private int qtd;
    private String dataPedido;
    private String situacao;
    private Fornecedor fornecedor;
    private Produto produto;
    private int idFornecedor;
    private int idProduto;

    public OrdemServico(int idOrdemSrv, int qtd, String dataPedido, String situacao, Fornecedor fornecedor, Produto produto) {
        this.idOrdemSrv = idOrdemSrv;
        this.qtd = qtd;
        this.dataPedido = dataPedido;
        this.situacao = situacao;
        this.fornecedor = fornecedor;
        this.produto = produto;
    }

    public int getIdOrdemSrv() {
        return idOrdemSrv;
    }

    public void setIdOrdemSrv(int idOrdemSrv) {
        this.idOrdemSrv = idOrdemSrv;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public String getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(String dataPedido) {
        this.dataPedido = dataPedido;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public Fornecedor getFornecedor() {
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public int getIdFornecedor() {
        return idFornecedor;
    }

    public void setIdFornecedor(int idFornecedor) {
        this.idFornecedor = idFornecedor;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    
    
}
