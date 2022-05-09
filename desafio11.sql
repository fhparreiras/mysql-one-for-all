SELECT nome AS nome_musica, 
		REPLACE(REPLACE(REPLACE(REPLACE(REPLACE
			(nome,'Her Own', 'Trybe'), 'Silly', 'Nice'), 'Circus', 'Pull Request'), 'Inner Fire', 'Project'), 'Streets', 'Code Review') AS novo_nome
		FROM musicas
		WHERE nome IN ('Dance With Her Own', "Let's Be Silly", 'Magic Circus', 'Troubles Of My Inner Fire', 'Without My Streets')
        ORDER BY nome;
