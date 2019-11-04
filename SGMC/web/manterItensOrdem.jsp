<%-- 
    Document   : manterItensOrdem
    Created on : 03/11/2019, 10:18:44
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
        <h1>Manter Itens Ordem - ${operacao}</h1>
        <form action="ManterItensOrdemController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterItensOrdem">
            <table>
                <tr>
                    <td>
                        <label> ID: </label>
                        <input type="text" name="numIdItensOrdem" value="${itensOrdem.idItensOrdem}">
                    </td>
                    <td>
                        <label> ID Ordem Serviço: </label>
                        <select name="optOrdemSrv">
                            <option value="0" <c:if test="${itensOrdem.ordemServico.idOrdemSrv == null}">selected</c:if></option>
                            <c:forEach items="${ordensServico}" var="ordemServico">
                                <option value="${ordemServico.idOrdemSrv}" <c:if test="${itensOrdem.ordemServico.idOrdemSrv == ordemServico.idOrdemSrv}">selected</c:if>>${ordemServico.idOrdemSrv}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <br>
                <tr>
                    <td>
                        <label> Produto: </label>
                        <select name="optProduto">
                            <option value="0" <c:if test="${itensOrdem.produto.idProduto == null}">selected</c:if></option>
                            <c:forEach items="${produtos}" var="produto">
                                <option value="${produto.idProduto}" <c:if test="${itensOrdem.produto.idProduto == produto.idProduto}">selected</c:if>>${produto.nome}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td>
                        <label> Quantidade: </label>
                        <input type="number" name="numQuantidade" value="${itensOrdem.quantidade}">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="reset" value="Cancelar">
                        <input type="submit" name="btnConfirmar" value="${operacao}">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
