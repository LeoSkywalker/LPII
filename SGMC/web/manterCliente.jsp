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
            <input type="number" id="idCliente">
            <br>
            <label> Nome: </label>
            <input type="text" id="nomeCliente">
            <br>
            <label> E-mail: </label>
            <input type="email" id="emailCliente">
            <br>
            <label> CPF: </label>
            <input type="number" id="cpfCliente">
            <br>
            <label> RG: </label>
            <input type="text" id="rgCliente">
            <br>
            <label> Data Nascimento: </label>
            <input type="date" id="nascCliente">
            <br>
            <label> Telefone: </label>
            <input type="tel" id="telefoneCliente">
            <br>
            <label> Celular: </label>
            <input type="tel" id="celCliente">
            <br>
            <label> Estado Civil: </label>
            <select name="estadoCivil" id="estCivilCliente">
                <option id="solteiro">Solteiro</option>
                <option id="casado">Casado</option>
                <option id="viuvo">Viúvo</option>
            </select>
            <br>
            <label> Sexo: </label>
            <select name="sexo" id="estCivilCliente">
                <option id="masculino">Masculino</option>
                <option id="feminino">Feminino</option>
                <option id="outro">Outro</option>
            </select>
            <br>
            <label> CEP: </label>
            <input type="number" id="cepCliente">
            <br>
            <label> UF: </label>
            <input type="text" id="ufCliente">
            <br>
            <label> Cidade: </label>
            <input type="text" id="cidadeCliente">
            <br>
            <label> Logadouro: </label>
            <input type="text" id="logradouroCliente">
            <br>
            <label> Numero: </label>
            <input type="number" id="numCliente">
            <br>
            <label> Complemento: </label>
            <input type="text" id="compCliente">
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
