select * from cliente;
select * from curso;

# Mostra os seguidores de um cliente
select s.seguidor_nome_identificador seguidor, s.seguido_nome_identificador seguido, c.nome nome from seguidores s join cliente c 
on s.seguido_nome_identificador = c.nome_identificador where s.seguido_nome_identificador = 'vitor_gss';
# Mostra quem um cliente segue
select s.seguidor_nome_identificador seguidor, s.seguido_nome_identificador seguido, c.nome nome from seguidores s join cliente c 
on s.seguido_nome_identificador = c.nome_identificador where s.seguidor_nome_identificador = 'biel-toto';
# Mostrar plano do cliente
select p.nomePlano, c.nome from plano p join cliente c on c.fk_plano = p.idPlano where c.nome_identificador = 'vitor_gss';
# Mostrar nome do cliente
select c.nome, c.nome_identificador as '@' from cliente c where nome_identificador = 'vitor_gss';
# Mostrar cursos do cliente
select c.nome cliente, cu.nomeCurso 'Nome do curso' from  cliente c join clientecurso cc on cc.fk_nome_identificador = c.nome_identificador 
join curso cu on cc.fk_idCurso = idCurso where c.nome_identificador = 'vitor_gss';
# Mostrar currículos do cliente
select * from curriculo where fk_nome_identificador = 'vitor_gss';
# Mostrar cursos no currículo do cliente
select c.nome, cursos.nome from cliente c join curriculo cu on cu.fk_nome_identificador = nome_identificador 
join cursos on cursos.fk_nome_identificador = cu.fk_nome_identificador where cursos.nome = 'JavaScript'