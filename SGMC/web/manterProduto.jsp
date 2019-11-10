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
        <form action="ManterProdutoController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterProduto">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="text" name="numIdProduto" value="${produto.idProduto}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Nome: </label>
                        <input type="text" name="nomeProduto" value="${produto.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td>
                        <label> Fornecedor: </label>
                        <select name="optFornecedor" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${produto.fornecedor.idFornecedor == null}">selected</c:if></option>
                            <c:forEach items="${fornecedores}" var="fornecedor">
                                <option value="${fornecedor.idFornecedor}" <c:if test="${produto.fornecedor.idFornecedor == fornecedor.idFornecedor}">selected</c:if>>${fornecedor.nomeFantasia}</option>
                            </c:forEach>
                        </select>
                    </td>
                   <td>
                        <label> Categoria: </label>
                        <select name="optCategoria" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
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
                        <input type="text" name="numCodInterno" value="${produto.codInterno}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Código de Barra: </label>
                        <input type="text" name="numCodBarra" value="${produto.codBarra}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Unidade de Medida: </label>
                        <input type="text" name="nomeUnidadeMedida" value="${produto.unidadeMedida}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Preço de Compra: </label>
                        <input type="text" name="precoCompra" value="${produto.precoCompra}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Peso(kg): </label>
                        <input type="text" name="peso" value="${produto.peso}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Altura(cm): </label>
                        <input type="text" name="altura" value="${produto.altura}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Comprimento(cm): </label>
                        <input type="text" name="comprimento" value="${produto.comprimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Largura(cm): </label>
                        <input type="text" name="largura" value="${produto.largura}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                 <td><label> Validade(meses): </label>
                        <input type="text" name="validade" value="${produto.validade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                 <td><label> Quantidade Mínima: </label>
                     <input type="text" name="qtdMinima" value="${produto.qtdMinima}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                 <td><label> Quantidade Atual: </label>
                     <input type="text" name="qtdAtual" value="${produto.qtdAtual}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                 <td><label> Quantidade Máxima: </label>
                     <input type="text" name="qtdMaxima" value="${produto.qtdMaxima}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><input type="submit" name="btnConfirmar" value="${operacao}">
                    </td>
                </tr>
            </table>
        </form>
        <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='PesquisaProdutoController'"></td></tr></table>
    </body>
</html>
