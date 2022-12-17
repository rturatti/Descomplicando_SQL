-- Databricks notebook source
SELECT 
      descUF AS Estados,
      COUNT(*) AS ClientesPorEstado

FROM silver_olist.cliente
GROUP BY descUF

-- COMMAND ----------

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS ClientesPorEstado

FROM silver_olist.cliente
GROUP BY descUF

-- COMMAND ----------


