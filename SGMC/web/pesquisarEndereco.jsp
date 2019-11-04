<%-- 
    Document   : pesquisarEndereco
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
        <h1>Pesquisa de Endereco</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Logradouro:</th>
                <th>Cidade:</th>
                <th>UF:</th>
                <th colspan="2">Ação</th>
                
            </tr>
            <c:forEach items="${enderecos}" var="endereco">
                <tr>
                    <td><c:out value="${endereco.idEndereco}"/></td>
                    <td><c:out value="${endereco.logradouro}"/></td>
                    <td><c:out value="${endereco.cidade}"/></td>
                    <td><c:out value="${endereco.uf}"/></td>
                    <td><a href="ManterEnderecoController?acao=prepararOperacao&operacao=Excluir&idEndereco=<c:out value="${endereco.idEndereco}"/>">Excluir</a></td>
                    <td><a href="ManterEnderecoController?acao=prepararOperacao&operacao=Alterar&idEndereco=<c:out value="${endereco.idEndereco}"/>">Alterar</a></td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterEnderecoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
