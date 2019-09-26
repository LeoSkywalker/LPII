<%-- 
    Document   : manterDevolucao
    Created on : 26/09/2019, 16:14:24
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
        <h1>Manter Perda ou Devolução - ${operacao}</h1>
        <form action="ManterDevolucaoController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterDevolucao">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdPerdaDevolucao" value="${perdaDevolucao.idPerdaDevolucao}"></td>
                    <td>
                        <label> Tipo: </label>
                        <select name="optTipo">
                            <option value="perda" <c:if test="${perdaDevolucao.tipo == 'perda'}"> selected</c:if>> Perda</option>
                            <option value="devolucao" <c:if test="${perdaDevolucao.tipo == 'devolucao'}"> selected</c:if>>Devolução</option>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Venda: </label>
                        <input type="number" name="numIdVenda" value="${perdaDevolucao.idVenda}"></td>
                    <td><label> Produto: </label>
                        <input type="number" name="numIdProduto" value="${perdaDevolucao.idProduto}"></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td>
                        <input type="reset" value="Cancelar">
                        <input type="submit" value="Enviar">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
