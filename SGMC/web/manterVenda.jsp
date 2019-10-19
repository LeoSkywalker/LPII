<%-- 
    Document   : manterVenda
    Created on : 07/09/2019, 23:36:43
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
        <h1>Manter Venda - ${operacao}</h1>
        <form action="ManterVendaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterVenda">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="text" name="numIdVenda" value="${venda.idVenda}"></td>
                    <td><label> Data da Venda: </label>
                        <input type="date" name="dtDataVenda" value="${venda.dataVenda}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Cliente: </label>
                        <select name="optCliente">
                            <option value="0" <c:if test="${venda.cliente.idCliente == null}">selected</c:if></option>
                            <c:forEach items="${clientes}" var="cliente">
                                <option value="${cliente.idCliente}" <c:if test="${venda.cliente.idCliente == cliente.idCliente}">selected</c:if>>${cliente.nome}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td><label> Usuário: </label>
                        <select name="optUsuario">
                            <option value="0" <c:if test="${venda.usuario.idUsuario == null}">selected</c:if></option>
                            <c:forEach items="${usuarios}" var="usuario">
                                <option value="${usuario.idUsuario}" <c:if test="${venda.usuario.idUsuario == usuario.idUsuario}">selected</c:if>>${usuario.nome}</option>
                            </c:forEach>
                        </select>
                            
                    </td><td><label> Produto: </label>
                        <input type="text" name="txtIdProduto" value="${itensVenda.idProduto}"></td>

                    <td>
                    <label> Quantidade: </label>
                        <input type="text" name="qtdProduto" value="${itensVenda.quantidade}">
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <label> Código de Barra: </label>
                        <input type="text" name="numCodBarra" value="${venda.codBarra}">
                    </td>
                    <td>
                        <label> Preço Unitário: </label>
                        <input type="text" name="precounitario" value="${itensVenda.precoUnitario}">
                    </td>
                    <td>
                        <label> Valor Desconto: </label>
                        <input type="text" name="numValorDesconto" value="${venda.valorDesconto}">
                    </td>
                    <td><label> Forma de Pagamento: </label>
                        <select name="optPagamento">
                            <option value="0" <c:if test="${venda.pagamento.idFormaPgto == null}">selected</c:if></option>
                            <c:forEach items="${pagamentos}" var="pagamento">
                                <option value="${pagamento.idFormaPgto}" <c:if test="${venda.pagamento.idFormaPgto == pagamento.idFormaPgto}">selected</c:if>>${pagamento.nome}</option>
                            </c:forEach>
                        </select>
                    </td>                
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação: </label>
                <select name="optSituacao">
                    <option value="aberta"<c:if test="${venda.situacao == 'aberta'}">selected</c:if>>Em Aberto</option>
                    <option value="efetuada"<c:if test="${venda.situacao == 'efetuada'}">selected</c:if>>Efetuada</option>
                </select></td>
                <td><label> Subtotal: </label>
                    <input type="text" name="numSubTotal" value="${venda.subTotal}"></td>
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
