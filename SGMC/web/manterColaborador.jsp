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
        <form action="ManterColaboradorController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterColaborador">
            <table>
                <tr>
                    <td><label>ID Colaborador: </label>
                        <input type="number" name="numIdColaborador" value="${colaborador.idColaborador}"></td>
                    <td><label>ID Usuário: </label>
                        <input type="number" name="numIdUsuario" value="${colaborador.idUsuario}"></td>
                    <td><label>Nome: </label>
                        <input type="text" name="txtNome" value="${colaborador.nome}"></td>
                    <td><label>Data Nascimento: </label>
                        <input type="date" name="txtDataNasc" value="${colaborador.dataNascimento}"></td>
                </tr>
                <tr>
                    <td><label> Senha: </label>
                        <input type="password" name="txtSenha" value="${colaborador.senha}"></td>

                    <td><label> Repetir Senha: </label>
                        <input type="password"></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label>CPF: </label>
                        <input type="number" name="numCPF" value="${colaborador.cpf}"></td>
                    <td><label>RG: </label>
                        <input type="text" name="numRg" value="${colaborador.rg}"></td></tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>E-mail: </label>
                        <input type="email" name="txtEmail" value="${colaborador.email}"></td>
                    <td><label>Telefone: </label>
                        <input type="tel" name="txtTelefone" value="${colaborador.telefone}"></td>
                    <td><label>Celular: </label>
                        <input type="tel" name="txtCelular" value="${colaborador.celular}"></td>
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
                        <td>
                            <label> Endereço: </label>
                            <select name="optEndereco">
                                <option value="0" <c:if test="${colaborador.endereco.idEndereco == null}">selected</c:if></option>
                            <c:forEach items="${enderecos}" var="endereco">
                                <option value="${endereco.idEndereco}" <c:if test="${colaborador.endereco.idEndereco == endereco.idEndereco}">selected</c:if>>${endereco.idEndereco}</option>
                            </c:forEach>
                        </select>
                    </td>     
                </tr>
                <tr><td></td></tr>    
                    <td><input type="submit" name="btnIncluir" value="Enviar">
                        <input type="reset" value="Cancelar"></td>  
            </table>
        </form>
    </body>
</html>
