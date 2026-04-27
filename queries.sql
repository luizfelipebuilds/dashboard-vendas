
---Vendas por Cliente

SELECT
    cliente,
    SUM(valor_total) AS total_gasto
FROM vendas
GROUP BY cliente
ORDER BY total_gasto DESC

--Vendas por mês

---Produto Mais Vendido em Faturamento

  SELECT
    substr(data, 4, 2) AS mes,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY mes
ORDER BY mes;

----Produto Mais Vendido por Quantidade
SELECT
    produto,
    SUM(quantidade) AS total_quantidade
FROM vendas
GROUP BY produto
ORDER BY total_quantidade DESC;

SELECT
    produto,
    SUM(valor_total) AS total_vendas
FROM vendas
GROUP BY produto
ORDER BY total_vendas DESC;

---Total de Vendas

SELECT
    produto,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY produto
ORDER BY total_vendas DESC;

----Vendas por Estado

SELECT
    estado,
    SUM(valor_total) AS total_vendas
FROM vendas
GROUP BY estado

----Ticket Médio

SELECT
    AVG(valor_total) AS ticket_medio
FROM vendas;