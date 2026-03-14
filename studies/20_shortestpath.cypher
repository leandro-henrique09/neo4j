// ainda estudando sobre mapeamento de relacionamentos, nesse arquivo abordo a função 'shortestpath'.


// aqui estou criando alguns nós e gerando um relacionamento para analise

MERGE (:Pessoa {name: 'João'});
MERGE (:Pessoa {name: 'Alice'});
MERGE (:Pessoa {name: 'Maria'});
MERGE (:Pessoa {name: 'Bob'});
MERGE (:Pessoa {name: 'Diana'});
MERGE (:Pessoa {name: 'Carlos'});

MATCH (p1:Pessoa {name: 'João'}), (p2:Pessoa {name: 'Alice'})
MERGE (p1)-[:CONHECE]->(p2);

MATCH (p1:Pessoa {name: 'João'}), (p2:Pessoa {name: 'Maria'})
MERGE (p1)-[:CONHECE]->(p2);

MATCH (p1:Pessoa {name: 'Alice'}), (p2:Pessoa {name: 'Bob'})
MERGE (p1)-[:CONHECE]->(p2);

MATCH (p1:Pessoa {name: 'Maria'}), (p2:Pessoa {name: 'Diana'})
MERGE (p1)-[:CONHECE]->(p2);

MATCH (p1:Pessoa {name: 'Bob'}), (p2:Pessoa {name: 'Carlos'})
MERGE (p1)-[:CONHECE]->(p2);

MATCH (p1:Pessoa {name: 'Bob'}), (p2:Pessoa {name: 'Diana'})
MERGE (p1)-[:CONHECE]->(p2);


// após criar os nós e as relações, vou utilizar o shortestpath para encontrar o menor caminho para uma consulta especifica

// neste exemplo, estou vendo qual o menor caminho para sair de 'João' e chegar até 'Carlos'
MATCH (pessoa_A:Pessoa {name: 'João'}) //seleciono o nó de João
MATCH (pessoa_B:Pessoa {name: 'Carlos'}) // seleciono o nó de Carlos
MATCH p = shortestPath((pessoa_A)-[:CONHECE*]-(pessoa_B)) // aqui pego o caminho mais curto para chegar de um nós ao outro
RETURN p, length(p) AS grauDeSeparacao // aqui retorno o resultado da query no grafo e conto quantos 'passos' foi necessário para chegar de um nós ao outro.
