SELECT a.nome artista, alb.nome album, COUNT(seg.seguidor_id) AS seguidores
FROM artistas a
INNER JOIN albuns alb
ON alb.artista_id = a.id_artista
INNER JOIN artistaSeguidores seg
ON a.id_artista = seg.artista_seguido_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
