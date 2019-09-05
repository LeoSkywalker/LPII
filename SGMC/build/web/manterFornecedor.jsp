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
            <label> ID: </label>
            <input type="number" value="idFornecedor">
            <br>
            <label> Nome Fantasia: </label>
            <input type="text" value="nomeFantasia">
            <br>
            <label> CNPJ: </label>
            <input type="number" value="cnpj">
            <br>
            <label> Nome Representante: </label>
            <input type="text" value="nomeRepresentante">
            <br>
            <label> E-mail: </label>
            <input type="email" value="emailFornecedor">
            <br>
            <label> Telefone: </label>
            <input type="number" value="telefoneFornecedor">
            <br>
            <label> CEP: </label>
            <input type="number" value="cepFornecedor">
            <br>
            <label> UF: </label>
            <input type="text" value="ufFornecedor">
            <br>
            <label> Cidade: </label>
            <input type="text" value="cidadeFornecedor">
            <br>
            <label> Logadouro: </label>
            <input type="text" value="logradouroFornecedor">
            <br>
            <label> Numero: </label>
            <input type="number" value="numFornecedor">
            <br>
            <label> Complemento: </label>
            <input type="text" value="compFornecedor">
            <br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
