-- Databricks notebook source
SELECT * FROM silver_olist.pagamento_pedido

--leia-se selecione TUDO  da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido

--leia-se: Selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao

FROM silver_olist.pedido 

LIMIT 5

--leia-se: Selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT *, datediff(dtEstimativaEntrega, dtEnvio) AS qtDiasPromessaEntrega

FROM silver_olist.pedido 

LIMIT 5

-- COMMAND ----------


