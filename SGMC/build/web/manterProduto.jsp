<%-- 
    Document   : manterProduto
    Created on : 05/09/2019, 09:57:39
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
        <h1>Manter Produto - ${operacao}</h1>
        <form action="ManterProdutoController?acao=confirmarOperacao&operacao = ${operacao}" method="post" name="frmManterProduto">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdProduto" value="${produto.idProduto}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Nome: </label>
                        <input type="text" name="nomeProduto" value="${produto.nome}"></td>
                    <td>
                        <label> Fornecedor: </label>
                        <select name="optFornecedor">
                            <option value="0" <c:if test="${produto.fornecedor.idFornecedor == null}">selected</c:if></option>
                            <c:forEach items="${fornecedores}" var="fornecedor">
                                <option value="${fornecedor.idFornecedor}" <c:if test="${produto.fornecedor.idFornecedor == fornecedor.idFornecedor}">selected</c:if>>${fornecedor.nomeFantasia}</option>
                            </c:forEach>
                        </select>
                    </td>
                   <td>
                        <label> Categoria: </label>
                        <select name="optCategoria">
                            <option value="0" <c:if test="${produto.categoria.idCategoria == null}">selected</c:if></option>
                            <c:forEach items="${categorias}" var="categoria">
                                <option value="${categoria.idCategoria}" <c:if test="${produto.categoria.idCategoria == categoria.idCategoria}">selected</c:if>>${categoria.descricao}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Código Interno: </label>
                        <input type="number" name="numCodInterno" value="${produto.codInterno}"></td>
                    <td><label> Código de Barra: </label>
                        <input type="number" name="numCodBarra" value="${produto.codBarra}"></td>
                    <td><label> Unidade de Medida: </label>
                        <input type="text" name="nomeUnidadeMedida" value="${produto.unidadeMedida}"></td>
                    <td><label> Preço de Compra: </label>
                        <input type="number" name="precoCompra" value="${produto.precoCompra}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Peso(kg): </label>
                        <input type="number" name="peso" value="${produto.peso}"></td>
                    <td><label> Altura(cm): </label>
                        <input type="number" name="altura" value="${produto.altura}"></td>
                    <td><label> Largura(m): </label>
                        <input type="number" name="largura" value="${produto.largura}"></td>
                    <td><label> Comprimento(m): </label>
                        <input type="number" name="comprimento" value="${produto.comprimento}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                 <td><label> Validade(meses): </label>
                        <input type="number" name="validade" value="${produto.validade}"></td>
                 <td><label> Quantidade Mínima: </label>
                     <input type="number" name="qtdMinima" value="${produto.qtdMinima}"></td>
                 <td><label> Quantidade Atual: </label>
                     <input type="number" name="qtdAtual" value="${produto.qtdAtual}"></td>
                 <td><label> Quantidade Máxima: </label>
                     <input type="number" name="qtdMaxima" value="${produto.qtdMaxima}"></td>
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
