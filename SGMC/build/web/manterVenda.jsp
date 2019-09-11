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
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" id="idVenda"></td>
                    <td><label> Data da Venda: </label>
                        <input type="date" id="dataVenda"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Usuário: </label>
                        <input type="text" id="idUsuario"></td>

                    <td><label> Cliente: </label>
                        <input type="text" id="idCliente"></td>

                    <td><label> Produto: </label>
                        <input type="text" id="idProduto"></td>

                    <td><label> Quantidade: </label>
                        <input type="number" id="qtdProduto"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Código de Barra: </label>
                        <input type="number" id="codigoBarra"></td>
                    <td><label> Preço Unitário: </label>
                        <input type="number" id="precoProduto"></td>
                    <td><label> Valor Desconto: </label>
                        <input type="number" id="desconto"></td>
                    <td><label> Forma de Pagamento: </label>
                        <select name="pagamento" id="formaPagamento">
                            <option id="dinheiro">Dinheiro</option>
                            <option id="cartaoDeb">Cartão de Débito</option>
                            <option id="cartaoCred">Cartão de Crédito</option>
                        </select></td>                
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação: </label>
                <select name="situacaoVenda" id="situacaoVenda">
                    <option id="efetuada">Efetuada</option>
                    <option id="emAberto">Em Aberto</option>
                </select></td>
                <td><label> Subtotal: </label>
                    <input type="number" id="subtotal"></td>
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
