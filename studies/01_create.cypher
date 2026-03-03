// O CREATE é utilizado para inserir novos nós ou relacionamentos no grafo.

// Exemplo criando um nó com o CREATE:
CREATE
    (leandro:Pessoa {name: 'Leandro'})
// ==========================================================================

// Exemplo criando um relacionamento entre nós:
CREATE
    (leonardo:Pessoa {name: 'Leonardo'})-[:COMPROU_EM]->(loja:Loja{name: 'Loja'})