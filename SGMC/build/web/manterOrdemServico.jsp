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
            <label> ID: </label>
            <input type="number" id="idOrdemServico">
            <br>
            <label> Fornecedor: </label>
            <input type="text" id="idFornecedor">
            <br>
            <label> Produto: </label>
            <input type="text" id="idProduto">
            <br>
            <label> Quantidade: </label>
            <input type="number" id="qtdProduto">
            <br>
            <label> Data Pedido: </label>
            <input type="date" id="dataPedido">
            <br>
            <label> Situação: </label>
            <select name="situacao" id="situacaoOrdemServico">
                <option id="emAberto">Em Aberto</option>
                <option id="recebida">Recebida</option>
            </select>
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
