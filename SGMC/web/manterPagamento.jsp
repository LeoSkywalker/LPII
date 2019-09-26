<%-- 
    Document   : manterPagamento
    Created on : 05/09/2019, 10:15:18
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
        <h1>Manter Pagamento</h1>
        <table>
                <tr>
                    <td><label> ID: </label>
                        <input type="number" id="idPagamento"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Nome: </label>
                        <input type="number" id="contaRecebedora"></td>
                    <td><label> Conta: </label>
                        <input type="number" id="contaRecebedora"></td>
                    <td><label> Agência: </label>
                        <input type="number" id="agenciaRecebedora"></td>
                    <td><label> Banco: </label>
                        <input type="text" id="banco"></td>
                    <td><label> Tipo da Conta: </label>
                        <input type="text" id="tipoConta"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Num. Máximo de Parcelas: </label>
                        <input type="number" id="numMaxParcelas"></td>
                    <td><label> Intervalo de Parcelas (dias): </label>
                        <input type="number" id="intParcelas"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                        
                    <td><label> Taxa do Banco: </label>
                        <input type="number" id="txBanco"></td>
                    <td><label> Taxa da Operadora: </label>
                        <input type="number" id="txOperadora"></td>
                    <td><label> Multa de Atraso: </label>
                        <input type="number" id="multa"></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><label> Situação: </label>
                        <select name="situacao" id="situacaoPagamento">
                            <option id="#1">-</option>
                            <option id="#2">-</option>
                            <option id="#3">-</option>
                        </select></td>
                </tr>
                <tr><td></td></tr>
                <tr>
                    <td><input type="reset" value="Cancelar">
                        <input type="submit" value="Enviar"></td>
                </tr>
            </table>
    </body>
</html>
