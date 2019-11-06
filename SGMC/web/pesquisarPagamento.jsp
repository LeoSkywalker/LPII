<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC - Pesquisa de Formas de Pagamento</title>
    </head>
    <body>
        <h1>Pesquisa de Formas de Pagamento</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Nome da Forma de Pagamento</th>
                <th>Conta</th>
                <th>Agência</th>
                <th>Nome do Banco</th>
                <th>Tipo da Conta</th>
                <th>Num. Máx de Parcelas</th>
                <th>Intervalo de Parcelas</th>
                <th>Taxa do Banco</th>
                <th>Taxa da Operadora</th>
                <th>Taxa da Multa de Atraso</th>
                <th>Situação da Confirmação</th>
                <th></th>
                
                <th colspan="2">Ação</th>
            </tr>
            <c:forEach items="${formasPagamento}" var="formaPagamento">
                <tr>
                    <td><c:out value="${formaPagamento.idFormaPgto}"/></td>
                    <td><c:out value="${formaPagamento.nome}"/></td>
                    <td><c:out value="${formaPagamento.conta}"/></td>
                    <td><c:out value="${formaPagamento.agencia}"/></td>
                    <td><c:out value="${formaPagamento.nomeBanco}"/></td>
                    <td><c:out value="${formaPagamento.tipoConta}"/></td>
                    <td><c:out value="${formaPagamento.numMaxParcelas}"/></td>
                    <td><c:out value="${formaPagamento.intervaloParcelas}"/></td>
                    <td><c:out value="${formaPagamento.taxaBanco}"/></td>
                    <td><c:out value="${formaPagamento.taxaOperadora}"/></td>
                    <td><c:out value="${formaPagamento.multaAtraso}"/></td>
                    <td><c:out value="${formaPagamento.situacaoConfirmacao}"/></td>
                    <td>
                        <a href="ManterPagamentoController?acao=prepararOperacao&operacao=Excluir&idFormaPgto=<c:out value="${formaPagamento.idFormaPgto}"/>">
                           Excluir</a>
                    </td>
                    <td>
                        <a href="ManterPagamentoController?acao=prepararOperacao&operacao=Alterar&idFormaPgto=<c:out value="${formaPagamento.idFormaPgto}"/>">
                           Alterar</a>
                    </td>
                </tr>
            </c:forEach>            
        </table>
        <br>
        <form action="ManterPagamentoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <table><tr><td><input type="submit" name="btnIncluir" value="Incluir"></td></tr></table>
        </form>
        <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='http://localhost:8084/SGMC/'"></td></tr></table>
    </body>
</html>
