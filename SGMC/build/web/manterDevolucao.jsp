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
        <form action="ManterDevolucaoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterDevolucao">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdPerdaDevolucao" value="${perdaDevolucao.idPerdaDevolucao}"></td>
                    <td>
                        <label> Tipo: </label>
                        <select name="optTipo">
                            <option value="Perda" <c:if test="${perdaDevolucao.tipo == 'Perda'}"> selected</c:if>> Perda</option>
                            <option value="Devolucao" <c:if test="${perdaDevolucao.tipo == 'Devolucao'}"> selected</c:if>>Devolução</option>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <label> Venda: </label>
                        <select name="optVenda">
                            <option value="0" <c:if test="${perdaDevolucao.venda.idVenda == null}">selected</c:if></option>
                            <c:forEach items="${vendas}" var="venda">
                                <option value="${venda.idVenda}" <c:if test="${perdaDevolucao.venda.idVenda == venda.idVenda}">selected</c:if>>${venda.idVenda}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <label> Produto: </label>
                        <select name="optProduto">
                            <option value="0" <c:if test="${perdaDevolucao.produto.idProduto == null}">selected</c:if></option>
                            <c:forEach items="${produtos}" var="produto">
                                <option value="${produto.idProduto}" <c:if test="${perdaDevolucao.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><input type="submit" name="btnIncluir" value="Enviar">
                        <input type="reset" value="Cancelar"></td>  
                </tr>
            </table>
        </form>
    </body>
</html>
