-- Databricks notebook source
  SELECT * FROM silver_olist.pedido

-- leia-se selecione TUDO da tabela silver_olist.pedido


-- COMMAND ----------

SELECT idPedido

FROM silver_olist.pedido

-- leia-se: selecione a coluna idPedido da tabela silver_olist

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido

-- leia-se: selecione as colunas idPedido e descsituacao da tabela silver_olist

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido

LIMIT 5

-- leia-se: selecione as colunas idPedido e descsituacao da tabela silver_olist e me devolva apenas 5 linhas (P.S.: o limit deve ser sempre a ultima coisa do código)

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega,dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

LIMIT 30

--leia-se: Selecionar toda a tabela silver_olist.pedido E acrescente uma coluna com a diferença entre as datas dtEstimativaEntrega e dtEntregue e nomeando essa nova coluna de qtDiasPromessaEntrega.  E ainda limitando o volume de linhas para 5
