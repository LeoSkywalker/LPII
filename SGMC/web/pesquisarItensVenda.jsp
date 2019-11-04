<%-- 
    Document   : pesquisarItensVenda
    Created on : 03/11/2019, 10:18:10
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
        <h1>Pesquisar Itens Venda</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>ID Venda</th>  
                <th>Produtos</th>
            </tr>
            <c:forEach items="${itensVendas}" var="itensVenda">
                <tr>
                    <td><c:out value="${itensVenda.idItensVenda}"/></td>
                    <td><c:out value="${itensVenda.idVenda}"/></td>
                    <td><c:out value="${itensVenda.produto.nome}"/></td>
                    <td>
                        <a href="ManterItensVendaController?acao=prepararOperacao&operacao=Excluir&idItensVenda=<c:out value="${itensVenda.idItensVenda}"/>">
                            Excluir</a>
                    </td>
                    <td>
                        <a href="ManterItensVendaController?acao=prepararOperacao&operacao=Alterar&idItensVenda=<c:out value="${itensVenda.idItensVenda}"/>">
                            Alterar</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterItensVendaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
