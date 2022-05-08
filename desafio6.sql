SELECT 
  CAST(FORMAT(MIN(p.valor), 2) AS DECIMAL(5,2)) AS faturamento_minimo,
  CAST(MAX(p.valor) AS DECIMAL(5,2)) AS faturamento_maximo,
  CAST(ROUND(AVG(p.valor), 2) AS DECIMAL(5,2)) AS faturamento_medio,
  CAST(ROUND(SUM(p.valor), 2) AS DECIMAL(5,2)) AS faturamento_total 
FROM planos p
INNER JOIN usuarios u 
ON u.plano_id = p.id_plano;
