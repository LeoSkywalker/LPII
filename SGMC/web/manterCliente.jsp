<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SGMC</title>
    </head>
    <body>
        <h1>Manter Cliente - ${operacao}</h1>
        <form action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCliente" onsubmit="validarFormulario(this)">
            <table>
                <tr>
                    <td><label>ID Cliente: </label>
                        <input type="number" name="numIdCliente" value="${cliente.idCliente}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
                    <td><label>Nome: </label>
                        <input type="text" name="txtNome" value="${cliente.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Data Nascimento: </label>
                        <input type="date" name="txtDataNasc" value="${cliente.dataNascimento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label>CPF: </label>
                        <input type="number" name="numCPF" value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>RG: </label>
                        <input type="text" name="numRg" value="${cliente.rg}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td></tr>
                <td><label>CNPJ: </label>
                        <input type="text" name="numCnpj" value="${cliente.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                <td><label>Razão Social: </label>
                        <input type="text" name="txtRazao" value="${cliente.razaoSocial}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                <td><label>Inscrição Estadual: </label>
                        <input type="text" name="txtInscricao" value="${cliente.inscricaoEstadual}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                <tr><td></td></tr>
                <tr>
                    <td><label>E-mail: </label>
                        <input type="text" name="txtEmail" value="${cliente.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Telefone: </label>
                        <input type="text" name="txtTelefone" value="${cliente.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                    <td><label>Celular: </label>
                        <input type="text" name="txtCelular" value="${cliente.celular}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>Estado Civil: </label>
                        <select name="optEstadoCivil" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="Solteiro(a)" <c:if test="${cliente.estadoCivil == 'Solteiro(a)'}"> selected</c:if>>Solteiro(a)</option>
                            <option value="Casado(a)" <c:if test="${cliente.estadoCivil == 'Casado(a)'}"> selected</c:if>>Casado(a)</option>
                            <option value="Viúvo(a)" <c:if test="${cliente.estadoCivil == 'Viúvo(a)'}"> selected</c:if>>Viúvo(a)</option>
                        </select></td>      
                    <td><label>Sexo: </label>
                        <select name="optSexo" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="Outro" <c:if test="${cliente.sexo == 'Outro'}"> selected</c:if>>Outro</option>
                            <option value="Masculino" <c:if test="${cliente.sexo == 'Masculino'}"> selected</c:if>>Masculino</option>
                            <option value="Feminino" <c:if test="${cliente.sexo == 'Feminino'}"> selected</c:if>>Feminino</option>
                        </select></td>
                        <td>
                        <label> Endereço: </label>
                        <select name="optEndereco" <c:if test="${operacao == 'Excluir'}"> disabled</c:if>>
                            <option value="0" <c:if test="${cliente.endereco.idEndereco == null}">selected</c:if></option>
                            <c:forEach items="${enderecos}" var="endereco">
                                <option value="${endereco.idEndereco}" <c:if test="${cliente.endereco.idEndereco == endereco.idEndereco}">selected</c:if>>${endereco.idEndereco}</option>
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
