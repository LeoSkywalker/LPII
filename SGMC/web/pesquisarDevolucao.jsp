<%-- 
    Document   : pesquisarDevolucao
    Created on : 26/09/2019, 16:24:55
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
        <h1>Pesquisar Perda ou Devolução</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Tipo</th>
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${perdasDevolucoes}" var="perdaDevolucao">
                <tr>
                    <td><c:out value="${perdaDevolucao.idPerdaDevolucao}"/></td>
                    <td><c:out value="${perdaDevolucao.tipo}"/></td>
                    <td><a href="ManterDevolucaoController?acao=prepararOperacao&operacao=Excluir&idPerdaDevolucao=<c:out value="${perdaDevolucao.idPerdaDevolucao}"/>">Excluir</a></td>
                    <td><a href="ManterDevolucaoController?acao=prepararOperacao&operacao=Alterar&idPerdaDevolucao=<c:out value="${perdaDevolucao.idPerdaDevolucao}"/>">Alterar</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="ManterDevolucaoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
