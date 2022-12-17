-- Databricks notebook source
SELECT descUF,
      COUNT(idVendedor) AS qtdVendedor

FROM silver_olist.vendedor


GROUP BY descUF
HAVING COUNT(idVendedor) >= 100
ORDER BY qtdVendedor DESC

-- COMMAND ----------

SELECT descUF,
      COUNT(idVendedor) AS qtdVendedor

FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')


GROUP BY descUF
HAVING COUNT(idVendedor) >= 100
ORDER BY qtdVendedor DESC
