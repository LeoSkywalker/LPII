<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
        <style type="text/css">
            <!--
            a:link {text-decoration: none;color: #000000}
            a:active {text-decoration: none;}
            a:visited {text-decoration: none;color: #000000}
            a:hover {text-decoration: underline;color: #000000}-->
        </style>
    </head>
    <body>
        <h1>Manter Fornecedor - ${operacao}</h1>
        <form action="ManterFornecedorController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterFornecedor">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdFornecedor" value="${fornecedor.idFornecedor}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><label> Nome Fantasia: </label>
                        <input type="text" name="txtNomeFantasia" value="${fornecedor.nomeFantasia}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> CNPJ: </label>
                        <input type="number" name="numCnpj" value="${fornecedor.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Nome Representante: </label>
                        <input type="text" name="txtNomeRepresentante" value="${fornecedor.nomeRepresentante}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>           
                <tr><td></td></tr> 
                <tr>
                    <td><label> E-mail: </label>
                        <input type="email" name="txtEmail" value="${fornecedor.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                    <td><label> Telefone: </label>
                        <input type="tel" name="numTelefone" value="${fornecedor.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td>
                        <label> Endereço: </label>
                        <select name="optEndereco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${fornecedor.endereco.idEndereco == null}">selected</c:if></option>
                            <c:forEach items="${enderecos}" var="endereco">
                                <option value="${endereco.idEndereco}" <c:if test="${fornecedor.endereco.idEndereco == endereco.idEndereco}">selected</c:if>>${endereco.idEndereco}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td><label> Número: </label>
                        <input type="number" name="numEndereco" value="${fornecedor.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label> Complemento: </label>
                        <input type="text" name="txtComplemento" value="${fornecedor.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><input type="submit" name="btnConfirmar" value="${operacao}">
                        <button><a href="PesquisaFornecedorController">Voltar</a></button>
                    </td>    
                </tr>
            </table>
        </form>
    </body>
</html>
