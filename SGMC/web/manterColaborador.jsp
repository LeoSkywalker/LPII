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
            <input type="number" id="idColaborador">
            <br>
            <label> Nome: </label>
            <input type="text" id="nomeColaborador">
            <br>
            <label> E-mail: </label>
            <input type="email" id="emailColaborador">
            <br>
            <label> Senha: </label>
            <input type="password" id="senha">
            <br>
            <label> Repetir Senha: </label>
            <input type="password">
            <br>
            <label> CPF: </label>
            <input type="number" id="cpfColaborador">
            <br>
            <label> RG: </label>
            <input type="text" id="rgColaborador">
            <br>
            <label> Data Nascimento: </label>
            <input type="date" id="nascColaborador">
            <br>
            <label> Telefone: </label>
            <input type="tel" id="telColaborador">
            <br>
            <label> Celular: </label>
            <input type="tel" id="celColaborador">
            <br>
            <label> Estado Civil: </label>
            <select name="estadoCivil" id="estCivilColaborador">
                <option id="solteiro">Solteiro</option>
                <option id="casado">Casado</option>
                <option id="viuvo">Viúvo</option>
            </select>
            <br>
            <label> Sexo: </label>
            <select name="sexo" id="sexoColaborador">
                <option id="masculino">Masculino</option>
                <option id="feminino">Feminino</option>
                <option id="outro">Outro</option>
            </select>
            <br>
            <label> CEP: </label>
            <input type="number" id="cepColaborador">
            <br>
            <label> UF: </label>
            <input type="text" id="ufColaborador">
            <br>
            <label> Cidade: </label>
            <input type="text" id="cidadeColaborador">
            <br>
            <label> Logadouro: </label>
            <input type="text" id="logradouroColaborador">
            <br>
            <label> Numero: </label>
            <input type="number" id="numColaborador">
            <br>
            <label> Complemento: </label>
            <input type="text" id="compColaborador">
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
