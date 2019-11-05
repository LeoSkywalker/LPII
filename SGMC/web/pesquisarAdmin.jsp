<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC - Pesquisa de Administradores</title>
    </head>
    <body>
        <h1>Pesquisa de Admin</h1>
        <table border=1>
            <tr>
                <th>ID Admin</th>
                <th>ID Usuário</th>
                <th>ID Nome</th>
                <th>ID E-mail</th>
                <th colspan="2">Ação</th>
                
            </tr>
            <c:forEach items="${admins}" var="admin">
                <tr>
                    <td><c:out value="${admin.idAdmin}"/></td>
                    <td><c:out value="${admin.idUsuario}"/></td>
                    <td><c:out value="${admin.nome}"/></td>
                    <td><c:out value="${admin.email}"/></td>
                    <td><a href="ManterAdminController?acao=prepararOperacao&operacao=Excluir&idAdmin=<c:out value="${admin.idAdmin}"/>">Excluir</a></td>
                    <td><a href="ManterAdminController?acao=prepararOperacao&operacao=Alterar&idAdmin=<c:out value="${admin.idAdmin}"/>">Alterar</a></td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterAdminController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
