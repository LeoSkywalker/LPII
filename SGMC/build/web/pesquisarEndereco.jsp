<%-- 
    Document   : pesquisarEndereco
    Created on : 08/10/2019, 10:05:07
    Author     : leonardo
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
       <h1>Pesquisar Endereço</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>CEP</th>
            </tr>
            <c:forEach items="${enderecos}" var="endereco">
                <tr>
                    <td><c:out value="${endereco.idEndereco}"/></td>
                    <td><c:out value="${endereco.cep}"/></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="ManterEnderecoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
