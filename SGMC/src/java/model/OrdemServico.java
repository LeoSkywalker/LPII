/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.OrdemServicoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class OrdemServico {
    private int idOrdemSrv;
    private String dataPedido;
    private String situacao;
    private Fornecedor fornecedor;
    private Produto produto;
    private int idFornecedor;
    private int idProduto;

    public OrdemServico(int idOrdemSrv, String dataPedido, String situacao, Fornecedor fornecedor, Produto produto) {
        this.idOrdemSrv = idOrdemSrv;
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

    public Fornecedor getFornecedor() throws SQLException, ClassNotFoundException {
        if ((this.idFornecedor != 0)&& (this.fornecedor == null)){
            this.fornecedor = Fornecedor.obterFornecedor(this.idFornecedor);
        }
        return fornecedor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
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

    public static OrdemServico obterOrdemServico (int idOrdemServico) throws SQLException, ClassNotFoundException{
        return OrdemServicoDAO.obterOrdemServico(idOrdemServico);
    }
    
    public static List<OrdemServico> obterOrdemServicos() throws ClassNotFoundException, SQLException{
        return OrdemServicoDAO.obterOrdemServicos();
    }
    
}
