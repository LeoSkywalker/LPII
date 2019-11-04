<%-- 
    Document   : manterPagamento
    Created on : 05/09/2019, 10:15:18
    Author     : Lucas Gama
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Pagamento - ${operacao}</h1>
        <form action="ManterPagamentoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterPagamento">
        <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdPagamento" value="${formaPagamento.idFormaPgto}"<c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    
                    <td><label> Nome da Forma de Pagamento: </label>
                        <input type="text" name="nome" value="${formaPagamento.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Conta: </label>
                        <input type="text" name="conta" value="${formaPagamento.conta}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Agência: </label>
                        <input type="text" name="agencia" value="${formaPagamento.agencia}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label> Banco: </label>
                        <input type="text" name="nomeBanco" value="${formaPagamento.nomeBanco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Tipo da Conta: </label>
                        <input type="text" name="tipoConta" value="${formaPagamento.tipoConta}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Num. Máximo de Parcelas: </label>
                        <input type="text" name="numMaxParcelas" value="${formaPagamento.numMaxParcelas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Intervalo de Parcelas (dias): </label>
                        <input type="text" name="intervaloParcelas" value="${formaPagamento.intervaloParcelas}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                        
                    <td><label> Taxa do Banco: </label>
                        <input type="text" name="taxaBanco" value="${formaPagamento.taxaBanco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Taxa da Operadora: </label>
                        <input type="text" name="taxaOperadora" value="${formaPagamento.taxaOperadora}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Taxa da Multa de Atraso: </label>
                        <input type="text" name="taxamultaAtraso" value="${formaPagamento.multaAtraso}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação de Confirmação do Pagamento: </label>
                        <select name="optSituacao"  <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="Automático"><c:if test="${formaPagamento.situacaoConfirmacao == 'Automático'}">selected</c:if>Automático</option>
                            <option value="Manual"><c:if test="${formaPagamento.situacaoConfirmacao == 'Manual'}">selected</c:if>Manual</option>
                            
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" name="btnConfirmar" value="${operacao}">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
