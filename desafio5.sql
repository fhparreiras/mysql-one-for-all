SELECT m.nome AS cancao, COUNT(h.musica_id) AS reproducoes
FROM musicas m
INNER JOIN historico AS h
ON h.musica_id = m.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
