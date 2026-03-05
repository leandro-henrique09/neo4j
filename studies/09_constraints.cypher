// Os CONSTRAINTS são usados para determinar que uma propriedade de um nó ou relacionamento seja única,
// obrigatória ou tenha seu tipo validado.

// uma anotação é que quando usamos o IS UNIQUE, ele já determina que a propriedade vai ser unica
// e que não pode ser nula. 

// No exemplo abaixo, vamos fazer o uso do constraints para validar que a propriedade "cpf" seja unica.
CREATE CONSTRAINT cpf_unico
IF NOT EXISTS // aqui nós validamos se já não existe a validação
FOR(p:Pessoa)
REQUIRE p.cpf IS UNIQUE;

// No exemplo abaixo, vamos fazer o uso do constraints para garantir que a propriedade "nome" não seja nula.
CREATE CONSTRAINT nome_pessoa_obrigatorio
IF NOT EXISTS // aqui nós validamos se já não existe a validação
FOR(p:Pessoa)
REQUIRE p.nome IS NOT NULL;
