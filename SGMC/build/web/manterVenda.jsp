<%-- 
    Document   : manterVenda
    Created on : 07/09/2019, 23:36:43
    Author     : Lucas Gama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Venda - ${operacao}</h1>
        <form action="ManterVendaController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterVenda">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdVenda" value="${venda.idVenda}"></td>
                    <td><label> Data da Venda: </label>
                        <input type="date" name="dtDataVenda" value="${venda.dataVenda}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Usuário: </label>
                        <input type="text" name="txtIdUsuario" value="${venda.idUsuario}"></td>

                    <td><label> Cliente: </label>
                        <input type="text" name="txtIdCliente" value="${venda.idCliente}"></td>

                    <td><label> Produto: </label>
                        <input type="text" name="txtIdProduto" value="${venda.idProduto}"></td>

                    <!--<td>
                    <label> Quantidade: </label>
                        <input type="number" id="qtdProduto">
                    </td>-->
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td>
                        <label> Código de Barra: </label>
                        <input type="number" name="numCodBarra" value="${venda.codBarra}">
                    </td>
                    <td>
                        <label> Preço Unitário: </label>
                        <input type="number" id="precoProduto">
                    </td>
                    <td>
                        <label> Valor Desconto: </label>
                        <input type="number" name="numValorDesconto" value="${venda.valorDesconto}">
                    </td>
                    <td><label> Forma de Pagamento: </label>
                        <select name="optPagamento">
                            <option value="0" <c:if test="${venda.formaPagamento.idFormaPgto == null}">selected</c:if></option>
                            <c:forEach items="${pagamentos}" var="pagamento">
                                <option value="${pagamento.idFormaPgto}" <c:if test="${venda.formaPagamento.idFormaPgto == pagamento.idFormaPgto}">selected</c:if>>${fornecedor.nomeFantasia}</option>
                            </c:forEach>
                        </select></td>                
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação: </label>
                <select name="optSituacao">
                    <option value="aberta"<c:if test="${ordemServico.situacao == 'aberta'}">selected</c:if>>Em Aberto</option>
                    <option value="efetuada"<c:if test="${ordemServico.situacao == 'efetuada'}">selected</c:if>>Efetuada</option>
                </select></td>
                <td><label> Subtotal: </label>
                    <input type="number" name="numSubTotal" value="${venda.subTotal}"></td>
                </tr>             
                <tr><td></td></tr>
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
