<%-- 
    Document   : manterProduto
    Created on : 05/09/2019, 09:57:39
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
        <h1>Manter Produto</h1>
        <form>
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" id="idProduto"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Nome: </label>
                        <input type="text" id="nomeProduto"></td>
                    <td><label> Fornecedor: </label>
                        <input type="text" id="idFornecedor"></td>
                    <td><label> Categoria: </label>
                        <select name="categoria" id="categoria">
                            <option id="hidraulico">Hidráulico</option>
                            <option id="eletrico">Elétrico</option>
                            <option id="ferramentaria">Ferramentaria</option>
                        </select></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Código Interno: </label>
                        <input type="number" id="codigoInterno"></td>
                    <td><label> Código de Barra: </label>
                        <input type="number" id="codigoBarra"></td>
                    <td><label> Unidade de Medida: </label>
                        <input type="text" id="unidadeMedida"></td>
                    <td><label> Preço de Compra: </label>
                        <input type="number" id="precoCompra"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Peso(kg): </label>
                        <input type="number" id="peso"></td>
                    <td><label> Altura(m): </label>
                        <input type="number" id="altura"></td>
                    <td><label> Largura(m): </label>
                        <input type="number" id="largura"></td>
                    <td><label> Comprimento(m): </label>
                        <input type="number" id="comprimento"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                 <td><label> Validade(meses): </label>
                        <input type="number" id="codigoInterno"></td>
                 <td><label> Quantidade Mínima: </label>
                     <input type="number" id="qtdMinima"></td>
                 <td><label> Quantidade Atual: </label>
                     <input type="number" id="qtdAtual"></td>
                 <td><label> Quantidade Máxima: </label>
                     <input type="number" id="qtdMaxima"></td>
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
