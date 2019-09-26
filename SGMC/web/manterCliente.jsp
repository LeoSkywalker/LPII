<%-- 
    Document   : endereco
    Created on : 05/09/2019, 09:26:44
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
        <h1>Manter Cliente - ${operacao}</h1>
        <form action="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method="post" name="frmManterCliente">
            <table>
                <tr>
                    <td><label>ID: </label>
                        <input type="number" name="numIdCliente" value="${cliente.idCliente}"></td>
                    <td><label>Nome: </label>
                        <input type="text" name="txtNome" value="${cliente.nome}"></td>
                    <td><label>Data Nascimento: </label>
                        <input type="date" name="txtDataNasc" value="${cliente.dataNascimento}"></td>
                </tr>
                <tr><td></td></tr>
                <tr><td><label>CPF: </label>
                        <input type="number" name="numCPF" value="${cliente.idCliente}"></td>
                    <td><label>RG: </label>
                        <input type="text" name="numRg" value="${cliente.rg}"></td></tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>E-mail: </label>
                        <input type="text" name="txtEmail" value="${cliente.email}"></td>
                    <td><label>Telefone: </label>
                        <input type="text" name="txtTelefone "value="${cliente.telefone}"></td>
                    <td><label>Celular: </label>
                        <input type="text" name="txtCelular" value="${cliente.celular}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>Estado Civil: </label>
                        <select name="optEstadoCivil">
                            <option value="Solteiro" <c:if test="${cliente.estadoCivil == 'Solteiro'}" selected</c:if>Solteiro(a)</option>
                            <option value="Casado" <c:if test="${cliente.estadoCivil == 'Casado'}" selected</c:if>Casado(a)</option>
                            <option value="Viúvo" <c:if test="${cliente.estadoCivil == 'Viúvo'}" selected</c:if>Viúvo(a)</option>
                        </select></td>      
                    <td><label>Sexo: </label>
                        <select name="optSSSexo">
                            <option value="outro" <c:if test="${cliente.sexo == 'Outro'}" selected</c:if>Outro</option>
                            <option value="masculino" <c:if test="${cliente.sexo == 'Masculino'}" selected</c:if>Masculino</option>
                            <option value="feminino" <c:if test="${cliente.sexo == 'Feminino'}" selected</c:if>Feminino</option>
                        </select></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>CEP: </label>
                        <input type="text" name="txtCep" value="${cliente.endereco.cep}"></td>
                    <td><label>UF: </label>
                        <input type="text" name="txtUf" value="${cliente.endereco.uf}"></td>
                    <td><label>Cidade: </label>
                        <input type="text" name="txtCidade" value="${cliente.endereco.cidade}"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label>Logadouro: </label>
                        <input type="text" name="txtLogradouro" value="${cliente.endereco.logradouro}"></td>
                    <td><label>Numero: </label>
                        <input type="number" name="numNumero" value="${cliente.endereco.numero}"></td>
                    <td><label>Complemento: </label>
                        <input type="text" name="txtComplemento" value="${cliente.endereco.complemento}"></td></tr>
                <tr><td></td></tr>
                <tr>    
                    <td><input type="submit" name="btnIncluir" value="Enviar">
                        <input type="reset" value="Cancelar"></td>    
                </tr>
            </table>
        </form>
    </body>
</html>
