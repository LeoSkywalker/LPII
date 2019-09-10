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
            <table>
            <tr>
                <td><label>ID: </label>
                    <input type="number" id="idCliente"></td>
                <td><label>Nome: </label>
                    <input type="text" id="nomeCliente"></td>
                <td><label>Data Nascimento: </label>
                    <input type="date" id="nascCliente"></td>
            </tr>
            <tr><td></td></tr>
            <tr><td><label>CPF: </label>
                    <input type="number" id="cpfCliente"></td>
                <td><label>RG: </label>
                    <input type="text" id="rgCliente"></td></tr>
            <tr><td></td></tr>
            <tr>
                <td><label>E-mail: </label>
                    <input type="email" id="emailCliente"></td>
                <td><label>Telefone: </label>
                    <input type="tel" id="telefoneCliente"></td>
                <td><label>Celular: </label>
                    <input type="tel" id="celCliente"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>Estado Civil: </label>
            <select name="estadoCivil" id="estCivilCliente">
                <option id="solteiro">Solteiro</option>
                <option id="casado">Casado</option>
                <option id="viuvo">Viúvo</option>
            </select></td>      
                <td><label>Sexo: </label>
            <select name="sexo" id="sexoCliente">
                <option id="masculino">Masculino</option>
                <option id="feminino">Feminino</option>
                <option id="outro">Outro</option>
            </select></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>CEP: </label>
            <input type="number" id="cepCliente"></td>
                <td><label>UF: </label>
                    <input type="text" id="ufCliente"></td>
                <td><label>Cidade: </label>
                    <input type="text" id="cidadeCliente"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>Logadouro: </label>
                    <input type="text" id="logradouroCliente"></td>
                <td><label>Numero: </label>
                    <input type="number" id="numCliente"></td>
                <td><label>Complemento: </label>
                    <input type="text" id="compCliente"></td></tr>
            <tr><td></td></tr>
            <tr>    
                <td><input type="submit" value="Enviar">
                    <input type="reset" value="Cancelar"></td>    
            </tr>
        </table>
        </form>
    </body>
</html>
