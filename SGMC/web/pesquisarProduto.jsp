<%-- 
    Document   : pesquisarProduto
    Created on : 23/09/2019, 11:07:39
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
        <h1>Pesquisa de Produto</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Nome:</th>    
            </tr>
            <c:forEach items="${produtos}" var="produto">
                <tr>
                    <td><c:out value="${produto.idProduto}"/></td>
                    <td><c:out value="${produto.nome}"/></td>
                    <td>
                        <a href="ManterProdutoController?acao=prepararOperacao&operacao=Excluir&idProduto=<c:out value="${produto.idProduto}"/>">
                            Excluir</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterProdutoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
