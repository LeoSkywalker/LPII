<%-- 
    Document   : endereco
    Created on : 05/09/2019, 09:26:44
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
        <h1>Manter Cliente</h1>
        <form>
            <label> ID: </label>
            <input type="number" value="idCliente">
            <br>
            <label> Nome: </label>
            <input type="text" value="nomeCliente">
            <br>
            <label> E-mail: </label>
            <input type="email" value="emailCliente">
            <br>
            <label> CPF: </label>
            <input type="number" value="cpfCliente">
            <br>
            <label> RG: </label>
            <input type="text" value="rgCliente">
            <br>
            <label> Data Nascimento: </label>
            <input type="date" value="nascCliente">
            <br>
            <label> Telefone: </label>
            <input type="number" value="telefoneCliente">
            <br>
            <label> Celular: </label>
            <input type="number" value="celCliente">
            <br>
            <label> Estado Civil: </label>
            <select name="estadoCivil" value="estCivilCliente">
                <option value="solteiro">Solteiro</option>
                <option value="casado">Casado</option>
                <option value="viuvo">Viúvo</option>
            </select>
            <br>
            <label> Sexo: </label>
            <select name="sexo" value="estCivilCliente">
                <option value="masculino">Masculino</option>
                <option value="feminino">Feminino</option>
                <option value="outro">Outro</option>
            </select>
            <br>
            <label> CEP: </label>
            <input type="number" value="cepCliente">
            <br>
            <label> UF: </label>
            <input type="text" value="ufCliente">
            <br>
            <label> Cidade: </label>
            <input type="text" value="cidadeCliente">
            <br>
            <label> Logadouro: </label>
            <input type="text" value="logradouroCliente">
            <br>
            <label> Numero: </label>
            <input type="number" value="numCliente">
            <br>
            <label> Complemento: </label>
            <input type="text" value="compCliente">
            <br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
