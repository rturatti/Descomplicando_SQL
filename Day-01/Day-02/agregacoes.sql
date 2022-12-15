-- Databricks notebook source
SELECT COUNT(*) AS linhasNaoNulas
FROM silver_olist.cliente


-- COMMAND ----------

SELECT COUNT(*) AS linhasNaoNulas, -- linhas não nulas
       COUNT(idCliente) AS nrIdClienteNaoNulo -- id clientes não nulos
FROM silver_olist.cliente


-- COMMAND ----------

SELECT COUNT(*) AS linhasNaoNulas, -- linhas não nulas
       COUNT(idCliente) AS nrIdClienteNaoNulo, -- id clientes não nulos
       COUNT (DISTINCT idCliente) AS nrIdClienteDistintos -- id de clientes distintos
FROM silver_olist.cliente


-- COMMAND ----------

SELECT COUNT(*) AS linhasNaoNulas, -- linhas não nulas
       COUNT(idCliente) AS nrIdClienteNaoNulo, -- id clientes não nulos
       COUNT (DISTINCT idCliente) AS nrIdClienteDistintos, -- id de clientes distintos
       COUNT (DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos
FROM silver_olist.cliente


-- COMMAND ----------

SELECT 
     COUNT(*) AS qtdLinhas,
     COUNT(DISTINCT idCliente) AS qtdClientes,
     COUNT(DISTINCT idClienteUnico) AS qtClienteUnicos

FROM silver_olist.cliente

WHERE descCidade IN ('presidente prudente', 'curitiba')


-- COMMAND ----------

SELECT 
      MIN(vlPreco) AS minPreco, -- menor vlPreco
      AVG(vlPreco) AS avgPreco, -- media da coluna vlPreco (Preço médio dos produtos)
      MAX(vlPreco) AS maxPreco, -- maior valor coluna vlPreco
      MIN(vlFrete) AS minFrete,
      AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete
      MAX(vlFrete) AS maxFrete
      
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
      MIN(vlPreco) AS minPreco, -- menor vlPreco
      
      INT( percentile(vlPreco, 0.5)) AS medianPreco, -- preco mediano dos produtos
      
      ROUND( AVG(vlPreco), 2) AS avgPreco, -- media da coluna vlPreco (Preço médio dos produtos)
      MAX(vlPreco) AS maxPreco, -- maior valor coluna vlPreco
      MIN(vlFrete) AS minFrete,
      INT( AVG(vlFrete)) AS avgFrete, -- media da coluna vlFrete
      INT( MAX(vlFrete)) AS maxFrete
      
FROM silver_olist.item_pedido

-- COMMAND ----------

-- DBTITLE 1,Groupby
SELECT COUNT(*) AS clientMG

      
FROM silver_olist.cliente
WHERE descUF = 'MG'
