// O MERGE é uma mescla do CREATE com o MATCH,
// tendo como funcionalidade criar um nó caso não exista, como também pode trazer caso ele já existe;

// EXEMPLO: criando um nó 
CREATE 
    (p:Pessoa {nome: 'Leandro', idade: 22});

// Agora vou procurar esse nó no grafo usando MERGE
MERGE (p:Pessoa {nome: 'Leandro'})
RETURN p;
// Neste caso, o MERGE encontra o nó existente e apenas o retorna.
// Nenhum nó novo é criado.

// Agora, vamos procurar um nó que não existe.
// O MERGE vai criar o nó automaticamente, pois não foi encontrado no grafo.
MERGE (p:Pessoa {nome: 'João'})
RETURN p;

// Agora, vou fazer um MERGE e setar algo caso esse nó exista: 
MERGE (p:Pessoa {nome: 'Leandro'})
ON MATCH SET
    p.genero = 'Masculino';

// Agora, vou fazer um MERGE e setar algo caso esse nó não exista: 
MERGE (p:Pessoa {nome: 'Marcos'})
ON CREATE SET
    p.genero = 'Masculino';