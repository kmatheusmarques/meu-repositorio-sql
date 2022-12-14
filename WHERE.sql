-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped' or idCliente = '059f7fc5719c7da6cbafe370971a8d70'

LIMIT 100

-- leia-se: selecione todas colunas da tabela silver_olist onde a situação do pedido seja shipped ou a coluna idCliente seja 059f7fc5719c7da6cbafe370971a8d70, com um limite de 100 linhas

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao = 'shipped' 
AND year(dtPedido) = '2018' 

-- leia-se: selecione todas as linhas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018' 

-- leia-se: selecione todas as linhas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados de 2018

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018' 

-- leia-se: selecione todas as linhas da tabela silver_olist.pedido filtrando pedidos enviados ou cancelados de 2018 (esse é o jeito mais elegante de fazer a query)

-- COMMAND ----------

SELECT * 
       DATEDIFF(dtEstimativaEntrega, dtAprovado) as 
FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018' 
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
