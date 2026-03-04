//  O WHERE é usado para filtrar informações em uma query

// Veja alguns exemplos:

// Abaixo, criei alguns nós para praticar e entender melhor o where.
CREATE
    (vitor:Pessoa {name: 'Vitor', age: 21, genre: 'M'}),
    (joao:Pessoa {name: 'João', age: 30, genre: 'M'}),
    (marcos:Pessoa {name: 'Marcos', age: 22, genre: 'M'}),
    (viviane:Pessoa {name: 'Viviane', age: 32, genre: 'F'}),
    (vania:Pessoa {name: 'Vania', age: 32, genre: 'F'});

// Agora, vou fazer uma consulta utilizando o where, para ver quais nós fazem parte do genero feminino: 
MATCH (p:Pessoa)
WHERE p.genre = 'F'
RETURN p.name as nome;

// Agora, pegando pessoas com menos de 30 anos:
MATCH (p:Pessoa)
WHERE p.age < 30
RETURN p.name as name, p.age as age;

// Agora, um exemplo pegando pessoas com mais de 25 anos e do sexo masculino. 
MATCH (p:Pessoa)
WHERE p.age > 25 AND p.genre = 'M'
RETURN p.name as name;

// Agora, selecionando pessoas quem tenham mais de 26 anos e que o nome comece com a letra 'V'
MATCH (p:Pessoa)
WHERE p.age > 25 AND p.name STARTS WITH 'V'
RETURN p.name as name;

// No exemplo abaixo, vou selecionar apenas pessoas que o genero seja diferente de 'F'
MATCH (p:Pessoa)
WHERE p.genre <> 'F'
RETURN p.name;

// No exemplo abaixo, vou selecionar nós que contenham 'Vi' em alguma parte do nome: 
MATCH (p:Pessoa)
WHERE p.name CONTAINS 'Vi'
return p.name