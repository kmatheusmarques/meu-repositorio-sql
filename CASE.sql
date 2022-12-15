-- Databricks notebook source
SELECT *,
       CASE 
         WHEN descUF = 'SP' THEN 'paulista' 
         WHEN descUF = 'RJ' THEN 'fluminense'
         WHEN descUF = 'PR' THEN 'paranaense'
         ELSE 'outros'
       END AS descNacionalidade
       
FROM silver_olist.cliente

--leia-se: Selecione todos os resultados da tabela silver.olist.cliente incluindo uma tabela que atribua aos dados SP o titulo de paulista, RJ fluminense e PR paranaense

-- COMMAND ----------

-- selecione todos os clientes de SP

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------



SELECT * 
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- SELECIONE TODOS OS VENDEDORES CARIOCAS E PAULISTAS

SELECT *
FROM silver_olist.vendedor
WHERE descUF = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

-- SELECIONE TODOS OS PRODUTOS E PERFUMARIA E BEBES COM ALTURA MAIOR QUE CINCO CM

SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > 5

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas --linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas, --linhas não nulas
        COUNT (idCliente) AS nrIdClienteNaoNulos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas, --linhas não nulas
        COUNT (idCliente) AS nrIdClienteNaoNulos, -- id de clientes nao nulos
        COUNT (distinct idCliente) AS nrIdClientesDistintos --id de clientes distintos

FROM silver_olist.cliente

----dá pra usar por exemplo pra checar se os SingleIds não estão duplicados, por exemplo.

-- COMMAND ----------

SELECT 
        COUNT(*) AS nrLinhasNaoNulas, --linhas não nulas
        COUNT (idCliente) AS nrIdClienteNaoNulos, -- id de clientes nao nulos
        COUNT (distinct idCliente) AS nrIdClientesDistintos, --id de clientes distintos
        COUNT (DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 

   COUNT(*) AS ClientesdePresidentePrudente,
   COUNT (distinct idCliente) AS qtIdCliente,
   COUNT (distinct idClienteUnico) AS qtIdClienteUnico
   
FROM silver_olist.cliente 
WHERE descCidade = 'presidente prudente'

-- COMMAND ----------

SELECT * FROM silver_olist.item_pedido
