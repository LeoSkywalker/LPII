<%-- 
    Document   : pesquisarColaborador
    Created on : 19/09/2019, 10:04:54
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC - Pesquisa de Colaboradores</title>
    </head>
    <body>
        <h1>Pesquisa de Colaboradores</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Data de Nascimento</th>
                <th>Telefone</th>
                <th>Celular</th>
                <th>Estado Civil</th>
                <th>Sexo</th>
                <th>Nome</th>
                <th>idEndereço</th>
            </tr>
            <c:forEach items="${colaboradores}" var="colaborador">
                <tr>
                    <td><c:out value="${colaborador.idColaborador}"/></td>
                    <td><c:out value="${colaborador.cpf}"/></td>
                    <td><c:out value="${colaborador.rg}"/></td>
                    <td><c:out value="${colaborador.dataNascimento}"/></td>
                    <td><c:out value="${colaborador.telefone}"/></td>
                    <td><c:out value="${colaborador.celular}"/></td>
                    <td><c:out value="${colaborador.estadoCivil}"/></td>
                    <td><c:out value="${colaborador.sexo}"/></td>
                    <td><c:out value="${colaborador.nome}"/></td>
                    <td><c:out value="${colaborador.idEndereco}"/></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="ManterColaboradorController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
