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
            </tr>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.idCliente}"/></td>
                    <td><c:out value="${cliente.nome}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>