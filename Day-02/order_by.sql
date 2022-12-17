-- Databricks notebook source
SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- Primeira forma

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY 2  -- Ordenando pela segunda coluna da consulta

-- COMMAND ----------

-- Segunda forma

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtdClientesEstado  -- Pelo nome do resultado criado

-- COMMAND ----------

-- Terceira forma

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)  -- De forma explicita

-- COMMAND ----------

-- Colocando de forma ordenade e decrescente

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtdClientesEstado DESC

-- COMMAND ----------

-- Colocando de forma ordenade e decrescente

SELECT 
      descUF AS Estados,
      COUNT(DISTINCT idClienteUnico) AS qtdClientesEstado

FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtdClientesEstado DESC 


LIMIT 1

-- COMMAND ----------


