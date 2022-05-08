SELECT statusUsuarios.usuario,
CASE
	WHEN condicao_usuario < 2021 THEN 'Usuário inativo'
	ELSE 'Usuário ativo' END AS condicao_usuario
FROM (SELECT u.nome usuario, MAX(YEAR(h.data_reproducao)) AS condicao_usuario
FROM usuarios AS u
INNER JOIN historico AS h
ON h.usuario_id = u.id_usuario
GROUP BY usuario
ORDER BY usuario) as statusUsuarios;
