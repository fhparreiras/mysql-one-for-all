SELECT u.nome usuario, COUNT(h.usuario_id) qtde_musicas_ouvidas, ROUND(SUM((m.duracao_segundos))/60,2) total_minutos
FROM historico AS h
INNER JOIN usuarios AS u
ON h.usuario_id = u.id_usuario
INNER JOIN musicas AS m
ON h.musica_id = m.id_musica
GROUP BY usuario;
