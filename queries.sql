
---Vendas por Cliente

  SELECT
    cliente,
    SUM(valor) AS total_gasto
FROM vendas
GROUP BY cliente
ORDER BY total_gasto DESC;

--Vendas por mês

SELECT
    substr(data, 4, 2) AS mes,
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY mes
ORDER BY mes;

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
    SUM(valor) AS total_vendas
FROM vendas
GROUP BY estado;

----Ticket Médio

SELECT
    AVG(valor) AS ticket_medio
FROM vendas;