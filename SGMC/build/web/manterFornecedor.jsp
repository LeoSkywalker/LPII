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
            <input type="number" id="idFornecedor">
            <br>
            <label> Nome Fantasia: </label>
            <input type="text" id="nomeFantasia">
            <br>
            <label> CNPJ: </label>
            <input type="number" id="cnpj">
            <br>
            <label> Nome Representante: </label>
            <input type="text" id="nomeRepresentante">
            <br>
            <label> E-mail: </label>
            <input type="email" id="emailFornecedor">
            <br>
            <label> Telefone: </label>
            <input type="tel" id="telefoneFornecedor">
            <br>
            <label> CEP: </label>
            <input type="number" id="cepFornecedor">
            <br>
            <label> UF: </label>
            <input type="text" id="ufFornecedor">
            <br>
            <label> Cidade: </label>
            <input type="text" id="cidadeFornecedor">
            <br>
            <label> Logadouro: </label>
            <input type="text" id="logradouroFornecedor">
            <br>
            <label> Numero: </label>
            <input type="number" id="numFornecedor">
            <br>
            <label> Complemento: </label>
            <input type="text" id="compFornecedor">
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
