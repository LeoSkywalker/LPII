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
        <h1>Pesquisa Itens Ordem de Serviço</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Quantidade</th>
                <th>ID Ordem de Serviço</th>  
                <th>Produtos</th>
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${itensOrdens}" var="itensOrdem">
                <tr>
                    <td><c:out value="${itensOrdem.idItensOrdem}"/></td>
                    <td><c:out value="${itensOrdem.quantidade}"/></td>
                    <td><c:out value="${itensOrdem.idOrdemSrv}"/></td>
                    <td><c:out value="${itensOrdem.produto.nome}"/></td>
                    <td>
                        <a href="ManterItensOrdemController?acao=prepararOperacao&operacao=Excluir&idItensOrdem=<c:out value="${itensOrdem.idItensOrdem}"/>">
                            Excluir</a>
                    </td>
                    <td>
                        <a href="ManterItensOrdemController?acao=prepararOperacao&operacao=Alterar&idItensOrdem=<c:out value="${itensOrdem.idItensOrdem}"/>">
                            Alterar</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <table>
        <td><form action="ManterItensOrdemController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form></td>
            <td><form action="PesquisaOrdemServicoController?acao=prepararOperacao&operacao" method="post">
                <input type="submit" name="btnIncluir" value="Voltar">
            </form></td>
        </table>
    </body>
</html>
