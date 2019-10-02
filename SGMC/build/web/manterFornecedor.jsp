<%-- 
    Document   : manterFornecedor
    Created on : 05/09/2019, 09:39:13
    Author     : Lucas Gama
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Fornecedor - ${operacao}</h1>
        <form action="ManterFornecedorController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterFornecedor">
            <table>
            <tr>
                <td><label> ID: </label>
                    <input type="number" name="numIdFornecedor" value="${fornecedor.idFornecedor}"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> Nome Fantasia: </label>
                    <input type="text" name="txtNomeFantasia" value="${fornecedor.nomeFantasia}"></td>
                <td><label> CNPJ: </label>
                    <input type="number" name="numCNPJ" value="${fornecedor.cnpj}"></td>
                <td><label> Nome Representante: </label>
                    <input type="text" name="txtNomeRepresentante" value="${fornecedor.nomeRepresentante}"></td>
            </tr>           
            <tr><td></td></tr> 
            <tr>
                <td><label> E-mail: </label>
                    <input type="email" name="txtEmail" value="${fornecedor.email}">
            </td>
                <td><label> Telefone: </label>
                    <input type="tel" name="numTelefone" value="${fornecedor.telefone}"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> CEP: </label>
                    <input type="number" name="numCEP" value="${fornecedor.endereco.cep}"></td>
                <td><label> UF: </label>
                    <input type="text" name="txtUF" value="${fornecedor.endereco.uf}"></td>
                <td><label> Cidade: </label>
                    <input type="text" name="txtCidade" value="${fornecedor.endereco.cidade}"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> Logadouro: </label>
                    <input type="text" name="txtLogradouro" value="${fornecedor.endereco.logradouro}"></td>
                <td><label> Numero: </label>
                    <input type="number" name="numNumero" value="${fornecedor.endereco.numero}"></td>
                <td><label> Complemento: </label>
                    <input type="text" name="txtComplemento" value="${fornecedor.endereco.complemento}"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><input type="reset" value="Cancelar">
                    <input type="submit" value="Enviar"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
