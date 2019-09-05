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
        <label> ID: </label>
        <input type="number" value="idPagamento">
        <br>
        <label> Conta: </label>
        <input type="number" value="contaRecebedora">
        <br>
        <label> Agência: </label>
        <input type="number" value="agenciaRecebedora">
        <br>
        <label> Banco: </label>
        <input type="text" value="banco">
        <br>
        <label> Tipo da Conta: </label>
        <input type="text" value="tipoConta">
        <br>
        <label> Num. Máximo de Parcelas: </label>
        <input type="number" value="numMaxParcelas">
        <br>
        <label> Intervalo de Parcelas (dias): </label>
        <input type="number" value="intParcelas">
        <br>
        <label> Taxa do Banco: </label>
        <input type="number" value="txBanco">
        <br>
        <label> Taxa da Operadora: </label>
        <input type="number" value="txOperadora">
        <br>
        <label> Multa de Atraso: </label>
        <input type="number" value="multa">
        <br>
        <label> Situação: </label>
        <select name="situacao" value="situacaoPagamento">
            <option value="#1">-</option>
            <option value="#2">-</option>
            <option value="#3">-</option>
        </select>
        <br>
        <input type="submit" value="Enviar">
    </body>
</html>
