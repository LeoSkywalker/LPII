<%-- 
    Document   : pesquisarFormaPagamento
    Created on : 23/09/2019, 11:02:42
    Author     : Lucas Gama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Pesquisa de Formas de Pagamento</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Nome do Banco:</th>    
            </tr>
            <c:forEach items="${formaPagamento}" var="formaPagamento">
                <tr>
                    <td><c:out value="${formaPagamento.idFormaPgto}"/></td>
                    <td><c:out value="${formaPagamento.nomeBanco}"/></td>
                    <td>
                        <a href="ManterPagamentoController?acao=prepararOperacao&operacao=Excluir&idFormaPgto=<c:out value="${formaPagamento.idFormaPgto}"/>">
                           Exclir</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterPagamentoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
