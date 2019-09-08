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
        <input type="number" id="idPagamento">
        <br>
        <label> Conta: </label>
        <input type="number" id="contaRecebedora">
        <br>
        <label> Agência: </label>
        <input type="number" id="agenciaRecebedora">
        <br>
        <label> Banco: </label>
        <input type="text" id="banco">
        <br>
        <label> Tipo da Conta: </label>
        <input type="text" id="tipoConta">
        <br>
        <label> Num. Máximo de Parcelas: </label>
        <input type="number" id="numMaxParcelas">
        <br>
        <label> Intervalo de Parcelas (dias): </label>
        <input type="number" id="intParcelas">
        <br>
        <label> Taxa do Banco: </label>
        <input type="number" id="txBanco">
        <br>
        <label> Taxa da Operadora: </label>
        <input type="number" id="txOperadora">
        <br>
        <label> Multa de Atraso: </label>
        <input type="number" id="multa">
        <br>
        <label> Situação: </label>
        <select name="situacao" id="situacaoPagamento">
            <option id="#1">-</option>
            <option id="#2">-</option>
            <option id="#3">-</option>
        </select>
        <br>
        <input type="reset" value="Cancelar">
        <input type="submit" value="Enviar">
    </body>
</html>
