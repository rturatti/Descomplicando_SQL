-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido 

WHERE descSituacao = 'delivered'

--LIMIT 100

--leia-se: selecione todas colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido 

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

--LIMIT 100

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido 

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

--LIMIT 100

-- COMMAND ----------

SELECT *,
        datediff(dtEstimativaEntrega, dtAprovado)
FROM silver_olist.pedido 

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
--LIMIT 100
