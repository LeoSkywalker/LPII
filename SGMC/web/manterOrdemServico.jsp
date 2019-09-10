<%-- 
    Document   : ordemServico
    Created on : 08/09/2019, 00:08:12
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
        <h1>Manter Ordem de Serviço</h1>
        <form>
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" id="idOrdemServico"></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><label> Fornecedor: </label>
                        <input type="text" id="idFornecedor"></td>
                    <td><label> Produto: </label>
                        <input type="text" id="idProduto"></td>
                    <td><label> Quantidade: </label>
                        <input type="number" id="qtdProduto"></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><label> Data Pedido: </label>
                        <input type="date" id="dataPedido"></td>
                    <td><label> Situação: </label>
                        <select name="situacao" id="situacaoOrdemServico">
                            <option id="emAberto">Em Aberto</option>
                            <option id="recebida">Recebida</option>
                        </select></td>
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
