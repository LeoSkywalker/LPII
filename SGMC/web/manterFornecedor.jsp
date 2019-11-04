<%-- 
    Document   : manterFornecedor
    Created on : 05/09/2019, 09:39:13
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
                </tr>
                <tr><td></td></tr> 
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" name="btnConfirmar" value="${operacao}"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
