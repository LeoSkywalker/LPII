<%-- 
    Document   : manterColaborador
    Created on : 05/09/2019, 09:02:09
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
        <h1>Manter Colaborador</h1>
        <form>
            <table>
            <tr>
                <td><label>ID: </label>
                    <input type="number" id="idColaborador"></td>
                <td><label>Nome: </label>
                    <input type="text" id="nomeColaborador"></td>
                <td><label>Data Nascimento: </label>
                    <input type="date" id="nascColaborador"></td>
            </tr>
            <tr>
                <td><label> Senha: </label>
                    <input type="password" id="senha"></td>
            
                <td><label> Repetir Senha: </label>
                    <input type="password"></td>
            </tr>
            <tr><td></td></tr>
            <tr><td><label>CPF: </label>
                    <input type="number" id="cpfColaborador"></td>
                <td><label>RG: </label>
                    <input type="text" id="rgColaborador"></td></tr>
            <tr><td></td></tr>
            <tr>
                <td><label>E-mail: </label>
                    <input type="email" id="emailColaborador"></td>
                <td><label>Telefone: </label>
                    <input type="tel" id="telColaborador"></td>
                <td><label>Celular: </label>
                    <input type="tel" id="celColaborador"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>Estado Civil: </label>
            <select name="estadoCivil" id="estCivilColaborador">
                <option id="solteiro">Solteiro</option>
                <option id="casado">Casado</option>
                <option id="viuvo">Viúvo</option>
            </select></td>      
                <td><label>Sexo: </label>
            <select name="sexo" id="sexoColaborador">
                <option id="masculino">Masculino</option>
                <option id="feminino">Feminino</option>
                <option id="outro">Outro</option>
            </select></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>CEP: </label>
            <input type="number" id="cepColaborador"></td>
                <td><label>UF: </label>
                    <input type="text" id="ufColaborador"></td>
                <td><label>Cidade: </label>
                    <input type="text" id="cidadeColaborador"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>Logadouro: </label>
                    <input type="text" id="logradouroColaborador"></td>
                <td><label>Numero: </label>
                    <input type="number" id="numColaborador"></td>
                <td><label>Complemento: </label>
                    <input type="text" id="compColaborador"></td></tr>
            <tr><td></td></tr>
            <tr>    
                <td><input type="submit" value="Enviar">
                    <input type="reset" value="Cancelar"></td>    
            </tr>
        </table>
        </form>
    </body>
</html>
