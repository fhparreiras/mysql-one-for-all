SELECT a.nome artista, alb.nome album
FROM artistas a 
INNER JOIN albuns alb
ON alb.artista_id = a.id_artista
GROUP BY album, artista
HAVING a.nome = 'Walter Phoenix';
