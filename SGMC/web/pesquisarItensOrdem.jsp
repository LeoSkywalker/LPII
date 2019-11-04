<%-- 
    Document   : pesquisarItensOrdem
    Created on : 03/11/2019, 10:19:08
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
        <h1>Pesquisa Itens Ordem de Serviço</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>ID Ordem de Serviço</th>  
                <th>Produtos</th>
            </tr>
            <c:forEach items="${itensOrdens}" var="itensOrdem">
                <tr>
                    <td><c:out value="${itensOrdem.idItensOrdem}"/></td>
                    <td><c:out value="${itensOrdem.idOrdemSrv}"/></td>
                    <td><c:out value="${itensOrdem.produto.nome}"/></td>
                    <td>
                        <a href="ManterItensOrdemController?acao=prepararOperacao&operacao=Excluir&idItensOrdem=<c:out value="${itensOrdem.idItensOrdem}"/>">
                            Excluir</a>
                    </td>
                    <td>
                        <a href="ManterItensOrdemController?acao=prepararOperacao&operacao=Alterar&idItensOrdem=<c:out value="${itensOrdem.idItensOrdem}"/>">
                            Alterar</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterItensOrdemController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
