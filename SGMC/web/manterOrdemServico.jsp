<%-- 
    Document   : ordemServico
    Created on : 08/09/2019, 00:08:12
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
        <h1>Manter Ordem de Serviço - ${operacao}</h1>
        <form action="ManterOrdemServicoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterOrdemServico">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="text" name="numIdOrdemServico" value="${ordemServico.idOrdemServico}"></td>
                    <td><label> Número da Ordem de Serviço: </label>
                        <input type="text" name="txtNumeroOS" value="${ordemServico.numOS}"></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td>
                        <label> Fornecedor: </label>
                        <select name="optFornecedor">
                            <option value="0" <c:if test="${ordemServico.fornecedor.idFornecedor == null}">selected</c:if></option>
                            <c:forEach items="${fornecedores}" var="fornecedor">
                                <option value="${fornecedor.idFornecedor}" <c:if test="${ordemServico.fornecedor.idFornecedor == fornecedor.idFornecedor}">selected</c:if>>${fornecedor.nomeFantasia}</option>
                            </c:forEach>
                        </select>
                    </td>
                    
                    <!--<td><label> Produto: </label>
                        <input type="text"></td>
                    <td><label> Quantidade (unidade): </label>
                        <input type="number" id="qtdProduto"></td>
                    <td><label> Descrição (defeito apresentado): </label>
                        <input type="number" id="descricao"></td>-->
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><label> Data Pedido: </label>
                        <input type="date" name="dtDataPedido" value="${ordemServico.dataPedido}"></td>
                    <td><label> Situação: </label>
                        <select name="optSituacao">
                            <option value="aberta"<c:if test="${ordemServico.situacao == 'aberta'}">selected</c:if>>Em Aberto</option>
                            <option value="recebida"<c:if test="${ordemServico.situacao == 'recebida'}">selected</c:if>>Recebida</option>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" name="btnIncluir" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
