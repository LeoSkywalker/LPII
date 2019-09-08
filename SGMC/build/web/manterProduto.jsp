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
            <label> ID: </label>
            <input type="number" id="idProduto">
            <br>
            <label> Nome: </label>
            <input type="text" id="nomeProduto">
            <br>
            <label> Fornecedor: </label>
            <input type="text" id="idFornecedor">
            <br>
            <label> Categoria: </label>
            <select name="categoria" id="categoria">
                <option id="hidraulico">Hidráulico</option>
                <option id="eletrico">Elétrico</option>
                <option id="ferramentaria">Ferramentaria</option>
            </select>
            <br>
            <label> Código Interno: </label>
            <input type="number" id="codigoInterno">
            <br>
            <label> Código de Barra: </label>
            <input type="number" id="codigoBarra">
            <br>
            <label> Unidade de Medida: </label>
            <input type="text" id="unidadeMedida">
            <br>
            <label> Preço de Compra </label>
            <input type="number" id="precoCompra">
            <br>
            <label> Peso(kg): </label>
            <input type="number" id="peso">
            <br>
            <label> Altura(m): </label>
            <input type="number" id="altura">
            <br>
            <label> Largura(m): </label>
            <input type="number" id="largura">
            <br>
            <label> Comprimento(m): </label>
            <input type="number" id="comprimento">
            <br>
            <label> Validade(meses): </label>
            <input type="number" id="codigoInterno">
            <br>
            <label> Quantidade Mínima: </label>
            <input type="number" id="qtdMinima">
            <br>
            <label> Quantidade Atual: </label>
            <input type="number" id="qtdAtual">
            <br>
            <label> Quantidade Máxima: </label>
            <input type="number" id="qtdMaxima">
            <br>
            <input type="reset" value="Cancelar">
            <input type="submit" value="Enviar">
            <br>
        </form>
    </body>
</html>
