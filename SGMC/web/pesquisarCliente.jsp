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
                <th>CNPJ</th>
                <th>Razão Social</th>
                <th>Inscrição Estadual</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Telefone</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Data de Nascimento</th>
                <th>Estado Civil</th>
                <th>Sexo</th>
                <th>Número</th> 
                <th>Complemento</th> 
                <th>Endereço</th>
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.idCliente}"/></td>
                    <td><c:out value="${cliente.nome}"/></td>
                    <td><c:out value="${cliente.cnpj}"/></td>
                    <td><c:out value="${cliente.razaoSocial}"/></td>
                    <td><c:out value="${cliente.inscricaoEstadual}"/></td>
                    <td><c:out value="${cliente.cpf}"/></td>
                    <td><c:out value="${cliente.rg}"/></td>
                    <td><c:out value="${cliente.telefone}"/></td>
                    <td><c:out value="${cliente.celular}"/></td>
                    <td><c:out value="${cliente.email}"/></td>
                    <td><c:out value="${cliente.dataNascimento}"/></td>
                    <td><c:out value="${cliente.estadoCivil}"/></td>
                    <td><c:out value="${cliente.sexo}"/></td>
                    <td><c:out value="${cliente.numero}"/></td>
                    <td><c:out value="${cliente.complemento}"/></td>
                    <td><c:out value="${cliente.endereco.logradouro}"/></td>
                    <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&idCliente=<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
                    <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Alterar&idCliente=<c:out value="${cliente.idCliente}"/>">Alterar</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
            <table><tr><td><input type="submit" name="btnIncluir" value="Incluir"></td></tr></table>
        </form>
        <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='http://localhost:8084/SGMC/'"></td></tr></table>
    </body>
</html>
