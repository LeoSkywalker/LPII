<%-- 
    Document   : pesquisarFornecedor
    Created on : 23/09/2019, 10:48:37
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
        <h1>Pesquisa de Fornecedor</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Nome:</th>    
            </tr>
            <c:forEach items="${fornecedores}" var="fornecedor">
                <tr><c:out value="${fornecedor.idFornecedor}"/></tr>
                <tr><c:out value="${fornecedor.nomeFantasia}"/></tr>
            </c:forEach>            
        </table>
    </body>
</html>
