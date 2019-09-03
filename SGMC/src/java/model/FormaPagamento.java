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
public class FormaPagamento {
    private int id;
    private int contaRecebedora;
    private int agenciaRecebedora;
    private String banco;
    private String tipoConta;
    private int numMaxParcelas;
    private int intervaloParcelas;
    private double taxaBanco;
    private double taxaOperadora;
    private double multaAtraso;
    private String situacaoConfirmacao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getContaRecebedora() {
        return contaRecebedora;
    }

    public void setContaRecebedora(int contaRecebedora) {
        this.contaRecebedora = contaRecebedora;
    }

    public int getAgenciaRecebedora() {
        return agenciaRecebedora;
    }

    public void setAgenciaRecebedora(int agenciaRecebedora) {
        this.agenciaRecebedora = agenciaRecebedora;
    }

    public String getBanco() {
        return banco;
    }

    public void setBanco(String banco) {
        this.banco = banco;
    }

    public String getTipoConta() {
        return tipoConta;
    }

    public void setTipoConta(String tipoConta) {
        this.tipoConta = tipoConta;
    }

    public int getNumMaxParcelas() {
        return numMaxParcelas;
    }

    public void setNumMaxParcelas(int numMaxParcelas) {
        this.numMaxParcelas = numMaxParcelas;
    }

    public int getIntervaloParcelas() {
        return intervaloParcelas;
    }

    public void setIntervaloParcelas(int intervaloParcelas) {
        this.intervaloParcelas = intervaloParcelas;
    }

    public double getTaxaBanco() {
        return taxaBanco;
    }

    public void setTaxaBanco(double taxaBanco) {
        this.taxaBanco = taxaBanco;
    }

    public double getTaxaOperadora() {
        return taxaOperadora;
    }

    public void setTaxaOperadora(double taxaOperadora) {
        this.taxaOperadora = taxaOperadora;
    }

    public double getMultaAtraso() {
        return multaAtraso;
    }

    public void setMultaAtraso(double multaAtraso) {
        this.multaAtraso = multaAtraso;
    }

    public String getSituacaoConfirmacao() {
        return situacaoConfirmacao;
    }

    public void setSituacaoConfirmacao(String situacaoConfirmacao) {
        this.situacaoConfirmacao = situacaoConfirmacao;
    }
    
    
    
}
