<%-- 
    Document   : manterFornecedor
    Created on : 05/09/2019, 09:39:13
    Author     : Lucas Gama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Fornecedor</h1>
        <form>
            <table>
            <tr>
                <td><label> ID: </label>
                    <input type="number" id="idFornecedor"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> Nome Fantasia: </label>
                    <input type="text" id="nomeFantasia"></td>
                <td><label> CNPJ: </label>
                    <input type="number" id="cnpj"></td>
                <td><label> Nome Representante: </label>
                    <input type="text" id="nomeRepresentante"></td>
            </tr>           
            <tr><td></td></tr> 
            <tr>
                <td><label> E-mail: </label>
                    <input type="email" id="emailFornecedor">
            </td>
                <td><label> Telefone: </label>
                    <input type="tel" id="telefoneFornecedor"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> CEP: </label>
                    <input type="number" id="cepFornecedor"></td>
                <td><label> UF: </label>
                    <input type="text" id="ufFornecedor"></td>
                <td><label> Cidade: </label>
                    <input type="text" id="cidadeFornecedor"></td>
            </tr>
            <tr><td></td></tr> 
            <tr>
                <td><label> Logadouro: </label>
                    <input type="text" id="logradouroFornecedor"></td>
                <td><label> Numero: </label>
                    <input type="number" id="numFornecedor"></td>
                <td><label> Complemento: </label>
                    <input type="text" id="compFornecedor"></td>
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
