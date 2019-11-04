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
                        <input type="number" name="numIdColaborador" value="${colaborador.idColaborador}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    <td><label>ID Usuário: </label>
                        <input type="number" name="numIdUsuario" value="${colaborador.idUsuario}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    <td><label>Nome: </label>
                        <input type="text" name="txtNome" value="${colaborador.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Data Nascimento: </label>
                        <input type="date" name="txtDataNasc" value="${colaborador.dataNascimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr>
                    <td><label> Senha: </label>
                        <input type="password" name="txtSenha" value="${colaborador.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>

                    <td><label> Repetir Senha: </label>
                        <input type="password"></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label>CPF: </label>
                        <input type="number" name="numCPF" value="${colaborador.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>RG: </label>
                        <input type="text" name="numRg" value="${colaborador.rg}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td></tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>E-mail: </label>
                        <input type="email" name="txtEmail" value="${colaborador.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Telefone: </label>
                        <input type="tel" name="txtTelefone" value="${colaborador.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Celular: </label>
                        <input type="tel" name="txtCelular" value="${colaborador.celular}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <label>Estado Civil: </label>
                        <select name="optEstadoCivil" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="Solteiro(a)" <c:if test="${colaborador.estadoCivil == 'Solteiro(a)'}">selected</c:if>>Solteiro(a)</option>
                            <option value="Casado(a)" <c:if test="${colaborador.estadoCivil == 'Casado(a)'}">selected</c:if>>Casado(a)</option>
                            <option value="Viúvo(a)" <c:if test="${colaborador.estadoCivil == 'Viúvo(a)'}">selected</c:if>>Viúvo(a)</option>
                            </select>
                        </td>      
                        <td>
                            <label>Sexo: </label>
                            <select name="optSexo" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                                <option value="Outro" <c:if test="${colaborador.sexo == 'Outro'}">selected</c:if>>Outro</option>
                            <option value="Masculino" <c:if test="${colaborador.sexo == 'Masculino'}">selected</c:if>>Masculino</option>
                            <option value="Feminino" <c:if test="${colaborador.sexo == 'Feminino'}">selected</c:if>>Feminino</option>
                            </select>
                        </td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                        <td>
                            <label> Endereço: </label>
                            <select name="optEndereco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                                <option value="0" <c:if test="${colaborador.endereco.idEndereco == null}">selected</c:if></option>
                            <c:forEach items="${enderecos}" var="endereco">
                                <option value="${endereco.idEndereco}" <c:if test="${colaborador.endereco.idEndereco == endereco.idEndereco}">selected</c:if>>${endereco.idEndereco}</option>
                            </c:forEach>
                        </select>
                    </td>     
                </tr>
                <tr><td></td></tr>    
                    <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" name="btnConfirmar" value="${operacao}"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
