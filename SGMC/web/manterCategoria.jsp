<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Categoria - ${operacao}</h1>
        <form action="ManterCategoriaController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCategoria">
            <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" name="numIdCategoria" value="${categoria.idCategoria}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                </tr>          
                <tr><td></td></tr> 
                <tr>
                    <td><label> Descrição: </label>
                        <input type="text" name="txtDescricao" value="${categoria.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                <tr><td></td></tr> 
                <tr>
                    <td>
                        <input type="submit" name="btnConfirmar" value="${operacao}">       
                    </td>
                </tr>
            </table>
        </form>
        <table><tr><td><input type="submit" name="btnVoltar" value="Voltar" onclick="window.location.href='PesquisaCategoriaController'"></td></tr></table>
    </body>
</html>
