<%-- 
    Document   : pesquisarUsuario
    Created on : 19/09/2019, 09:08:42
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC - Pesquisa de Cliente</title>
    </head>
    <body>
        <h1>Pesquisa de Cliente</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Endereço</th>
                <th></th>
            </tr>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.idCliente}"/></td>
                    <td><c:out value="${cliente.nome}"/></td>
                    <td><c:out value="${cliente.idEndereco}"/></td>
                    <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&idCliente=<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir"
              method="post">
        <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
