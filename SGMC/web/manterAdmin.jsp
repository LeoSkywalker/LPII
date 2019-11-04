<%-- 
    Document   : manterAdmin
    Created on : 05/09/2019, 09:39:13
    Author     : Leonardo Campos
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
        <h1>Manter Admin - ${operacao}</h1>
        <form action="ManterAdminController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterAdmin">
            <table>
                <tr>
                    <td><label> ID Admin: </label>
                        <input type="number" name="numIdAdmin" value="${admin.idAdmin}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><label> ID Usuario: </label>
                        <input type="number" name="numIdUsuario" value="${admin.idUsuario}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>           
                <tr><td></td></tr> 
                <tr>
                    <td><label> Nome: </label>
                        <input type="text" name="txtNome" value="${admin.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                    <td><label> Email: </label>
                        <input type="email" name="txtEmail" value="${admin.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Senha: </label>
                        <input type="password" name="txtSenha" value="${admin.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>

                    <td><label> Repetir Senha: </label>
                        <input type="password"></td>
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
