<%-- 
    Document   : manterColaborador
    Created on : 05/09/2019, 09:02:09
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
        <h1>Manter Colaborador - ${operacao}</h1>
        <form action="ManterColaboradorController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterColaborador">
            <table>
            <tr>
                <td><label>ID: </label>
                    <input type="number" name="numIdColaborador" value="${colaborador.idColaborador}"></td>
                <td><label>Nome: </label>
                    <input type="text" name="txtNome" value="${colaborador.usuario.nome}"></td>
                <td><label>Data Nascimento: </label>
                    <input type="date" name="dtDataNascimento" value="${colaborador.dataNascimento}"></td>
            </tr>
            <tr>
                <td><label> Senha: </label>
                    <input type="password" name="pwdSenha" value="${colaborador.usuario.senha}"></td>
            
                <td><label> Repetir Senha: </label>
                    <input type="password"></td>
            </tr>
            <tr><td></td></tr>
            <tr><td><label>CPF: </label>
                    <input type="number" name="numCPF" value="${colaborador.cpf}"></td>
                <td><label>RG: </label>
                    <input type="text" name="txtRG" value="${colaborador.rg}"></td></tr>
            <tr><td></td></tr>
            <tr>
                <td><label>E-mail: </label>
                    <input type="email" name="txtEmail" value="${colaborador.usuario.email}"></td>
                <td><label>Telefone: </label>
                    <input type="tel" name="numTelefone" value="${colaborador.telefone}"></td>
                <td><label>Celular: </label>
                    <input type="tel" name="numCelular" value="${colaborador.celular}"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td>
                    <label>Estado Civil: </label>
                    <select name="optEstadoCivil">
                        <option value="Solteiro"><c:if test="${colaborador.estadoCivil == 'Solteiro'}">selected</c:if>Solteiro(a)</option>
                        <option value="Casado"><c:if test="${colaborador.estadoCivil == 'Casado'}">selected</c:if>Casado(a)</option>
                        <option value="Viúvo"><c:if test="${colaborador.estadoCivil == 'Viúvo'}">selected</c:if>Viúvo(a)</option>
                    </select>
                </td>      
                <td>
                    <label>Sexo: </label>
                    <select name="optSexo">
                        <option value="outro"><c:if test="${colaborador.sexo == 'Outro'}">selected</c:if>Outro</option>
                        <option value="masculino"><c:if test="${colaborador.sexo == 'Masculino'}">selected</c:if>Masculino</option>
                        <option value="feminino"><c:if test="${colaborador.sexo == 'Feminino'}">selected</c:if>Feminino</option>
                    </select>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>CEP: </label>
            <input type="number" name="numCEP" value="${colaborador.endereco.cep}"></td>
                <td><label>UF: </label>
                    <input type="text" name="txtUF" value="${colaborador.endereco.uf}"></td>
                <td><label>Cidade: </label>
                    <input type="text" name="txtCidade" value="${colaborador.endereco.cidade}"></td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td><label>Logadouro: </label>
                    <input type="text" name="txtLogradouro" value="${colaborador.endereco.logradouro}"></td>
                <td><label>Numero: </label>
                    <input type="number" name="numNumero" value="${colaborador.endereco.numero}"></td>
                <td><label>Complemento: </label>
                    <input type="text" name="txtComplemento" value="${colaborador.endereco.complemento}"></td></tr>
            <tr><td></td></tr>
            <tr>    
                <td><input type="submit" value="Enviar">
                    <input type="reset" value="Cancelar"></td>    
            </tr>
        </table>
        </form>
    </body>
</html>
