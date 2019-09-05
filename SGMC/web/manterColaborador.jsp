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
            <label> ID: </label>
            <input type="number" value="idColaborador">
            <br>
            <label> Nome: </label>
            <input type="text" value="nomeColaborador">
            <br>
            <label> E-mail: </label>
            <input type="email" value="emailColaborador">
            <br>
            <label> Senha: </label>
            <input type="password" value="senha">
            <br>
            <label> Repetir Senha: </label>
            <input type="password">
            <br>
            <label> CPF: </label>
            <input type="number" value="cpfColaborador">
            <br>
            <label> RG: </label>
            <input type="text" value="rgColaborador">
            <br>
            <label> Data Nascimento: </label>
            <input type="date" value="nascColaborador">
            <br>
            <label> Telefone: </label>
            <input type="number" value="telColaborador">
            <br>
            <label> Celular: </label>
            <input type="number" value="celColaborador">
            <br>
            <label> Estado Civil: </label>
            <select name="estadoCivil" value="estCivilColaborador">
                <option value="solteiro">Solteiro</option>
                <option value="casado">Casado</option>
                <option value="viuvo">Viúvo</option>
            </select>
            <br>
            <label> Sexo: </label>
            <select name="sexo" value="sexoColaborador">
                <option value="masculino">Masculino</option>
                <option value="feminino">Feminino</option>
                <option value="outro">Outro</option>
            </select>
            <br>
            <label> CEP: </label>
            <input type="number" value="cepColaborador">
            <br>
            <label> UF: </label>
            <input type="text" value="ufColaborador">
            <br>
            <label> Cidade: </label>
            <input type="text" value="cidadeColaborador">
            <br>
            <label> Logadouro: </label>
            <input type="text" value="logradouroColaborador">
            <br>
            <label> Numero: </label>
            <input type="number" value="numColaborador">
            <br>
            <label> Complemento: </label>
            <input type="text" value="compColaborador">
            <br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
