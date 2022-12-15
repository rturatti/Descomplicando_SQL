-- Databricks notebook source
SELECT *,
        CASE 
          WHEN descUF = 'SP'  THEN 'Paulista'
          WHEN descUF = 'MG' THEN 'Mineiro'
          WHEN descUF = 'RJ' THEN 'Fluminese'
          WHEN descUF = 'PR' THEN 'Paranaense'
          ELSE 'outros'
        END AS descNacionalidade
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        -- isso aqui é uma coluna nova
        CASE 
          WHEN descUF = 'SP'  THEN 'Paulista'
          WHEN descUF = 'MG' THEN 'Mineiro'
          WHEN descUF = 'RJ' THEN 'Fluminese'
          WHEN descUF = 'PR' THEN 'Paranaense'
          ELSE 'outros'
        END AS descNacionalidade,
        -- isso aqui é uma outra coluna nova
        CASE
          WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
          ELSE 'Não tem são no nome'
        END AS descCidadeSao
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        -- isso aqui é uma coluna nova
        CASE WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'sudeste'
        END AS descRegiao
        -- isso aqui é uma outra coluna nova

FROM silver_olist.cliente

-- COMMAND ----------


