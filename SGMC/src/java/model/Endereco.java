/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.EnderecoDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class Endereco {
    
    private int idEndereco;
    private String logradouro;
    private int numero;
    private String complemento;
    private String cidade;
    private String bairro;
    private String uf;
    private String cep;

    public Endereco(int idEndereco, String logradouro, int numero, String complemento, String cidade, String bairro, String uf, String cep) {
        this.idEndereco = idEndereco;
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.cidade = cidade;
        this.bairro = bairro;
        this.uf = uf;
        this.cep = cep;
    }

    public int getIdEndereco() {
        return idEndereco;
    }

    public void setIdEndereco(int idEndereco) {
        this.idEndereco = idEndereco;
    }
    
    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
    
    public static Endereco obterEndereco (int idEndereco) throws SQLException, ClassNotFoundException{
        return EnderecoDAO.obterEndereco(idEndereco);
    }
    
    public static List<Endereco> obterEnderecos() throws ClassNotFoundException, SQLException{
        return EnderecoDAO.obterEnderecos();
    }
    
}
