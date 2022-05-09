SELECT m.nome AS nome, COUNT(h.usuario_id) AS reproducoes
FROM musicas m
INNER JOIN historico h
ON m.id_musica = h.musica_id
INNER JOIN usuarios u 
ON h.usuario_id = u.id_usuario 
WHERE u.plano_id = 1 OR u.plano_id = 3
GROUP BY nome
ORDER BY nome;
