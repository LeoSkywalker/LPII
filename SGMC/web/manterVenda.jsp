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
        <h1>Manter Venda</h1>
        <form>
            <label> ID: </label>
            <input type="number" id="idVenda">
            <br>
            <label> Data da Venda: </label>
            <input type="date" id="dataVenda">
            <br>
            <label> Usuário: </label>
            <input type="text" id="idUsuario">
            <br>
            <label> Cliente: </label>
            <input type="text" id="idCliente">
            <br>
            <label> Produto: </label>
            <input type="text" id="idProduto">
            <br>
            <label> Quantidade: </label>
            <input type="number" id="qtdProduto">
            <br>
            <label> Código de Barra: </label>
            <input type="number" id="codigoBarra">
            <br>
            <label> Preço Unitário: </label>
            <input type="number" id="precoProduto">
            <br>
            <label> Valor Desconto: </label>
            <input type="number" id="desconto">
            <br>
            <label> Forma de Pagamento: </label>
            <select name="pagamento" id="formaPagamento">
                <option id="dinheiro">Dinheiro</option>
                <option id="cartaoDeb">Cartão de Débito</option>
                <option id="cartaoCred">Cartão de Crédito</option>
            </select>
            <br>
            <label> Situação: </label>
            <select name="situacaoVenda" id="situacaoVenda">
                <option id="efetuada">Efetuada</option>
                <option id="emAberto">Em Aberto</option>
            </select>
            <br>
            <label> Subtotal: </label>
            <input type="number" id="subtotal">
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
