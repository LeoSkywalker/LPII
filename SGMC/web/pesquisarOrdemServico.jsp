<%-- 
    Document   : pesquisarOrdemServico
    Created on : 23/09/2019, 10:57:31
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
        <h1>Pesquisa de Ordens de Serviço</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Data de Pedido</th>
            </tr>
            <c:forEach items="${ordensServico}" var="ordemServico">
                <tr>
                    <td><c:out value="${ordemServico.idOrdemSrv}"/></td>
                    <td><c:out value="${ordemServico.dataPedido}"/></td>
                    <td>
                        <a href="ManterOrdemServicoController?acao=prepararOperacao&operacao=Excluir&idOrdemSrv=<c:out value="${ordemServico.idOrdemSrv}"/>">
                            Excluir</a>
                    </td>
                    <td>
                        <a href="ManterOrdemServicoController?acao=prepararOperacao&operacao=Alterar&idOrdemSrv=<c:out value="${ordemServico.idOrdemSrv}"/>">
                            Alterar</a>
                    </td>
                </tr>
            </c:forEach>
        <tr>
            <td>
                <a href="PesquisaItensOrdemController"> Manter Itens da Ordem de Serviço </a>
            </td>
        </tr>
        </table>
        <br>
        <form action="ManterOrdemServicoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
    </body>
</html>
