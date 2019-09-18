/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.ColaboradorDAO;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Lucas Gama
 */
public class Colaborador extends Usuario {

    private int idColaborador;
    private String nome;
    private String cpf;
    private String rg;
    private String dataNascimento;
    private String telefone;
    private String celular;
    private String estadoCivil;
    private boolean sexo;
    private Endereco endereco;
    private int idEndereco;

    public Colaborador(int idColaborador, String nome, String cpf, String rg, 
            String dataNascimento, String telefone, String celular, 
            String estadoCivil, boolean sexo, int id, String email, String Senha,  
            Endereco endereco) {
        super(id, email, Senha);
        this.idColaborador = idColaborador;
        this.nome = nome;
        this.cpf = cpf;
        this.rg = rg;
        this.dataNascimento = dataNascimento;
        this.telefone = telefone;
        this.celular = celular;
        this.estadoCivil = estadoCivil;
        this.sexo = sexo;
        this.endereco = endereco;
    }

    public int getIdColaborador() {
        return idColaborador;
    }

    public void setIdColaborador(int idColaborador) {
        this.idColaborador = idColaborador;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public boolean getSexo() {
        return sexo;
    }

    public void setSexo(boolean sexo) {
        this.sexo = sexo;
    }

    public Endereco getEndereco() throws SQLException, ClassNotFoundException {
        if((this.idEndereco !=0) && (this.endereco == null)){
            this.endereco = Endereco.obterEndereco(this.idEndereco);
        }
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public int getIdEndereco() {
        return idEndereco;
    }

    public void setIdEndereco(int idEndereco) {
        this.idEndereco = idEndereco;
    }

    public static Colaborador obterColaborador (int idColaborador) throws SQLException, ClassNotFoundException{
        return ColaboradorDAO.obterColaborador(idColaborador);
    }
    
    public static List<Colaborador> obterColaboradores() throws ClassNotFoundException, SQLException{
        return ColaboradorDAO.obterColaboradores();
    }
    
}
