// como mostrado em aula, este exemplo de mapeamento de relacionamentos usando o grafo com os nós e relacionamentos abaixo: 

CREATE (alice:Usuario {nome: "Alice", idade: 25})
CREATE (bob:Usuario {nome: "Bob", idade: 30})
CREATE (carol:Usuario {nome: "Carol", idade: 28})

CREATE (matrix:Filme {titulo: "Matrix", ano: 1999, genero: "Ação"})
CREATE (titanic:Filme {titulo: "Titanic", ano: 1997, genero: "Romance"})
CREATE (avatar:Filme {titulo: "Avatar", ano: 2009, genero: "Sci-Fi"})

CREATE (keanu:Ator {nome: "Keanu Reeves"})
CREATE (leo:Ator {nome: "Leonardo DiCaprio"})
CREATE (kate:Ator {nome: "Kate Winslet"})

CREATE (alice)-[:ASSISTIU {nota: 9}]->(matrix)
CREATE (alice)-[:ASSISTIU {nota: 7}]->(titanic)
CREATE (bob)-[:ASSISTIU {nota: 8}]->(avatar)
CREATE (bob)-[:ASSISTIU {nota: 6}]->(matrix)
CREATE (carol)-[:ASSISTIU {nota: 10}]->(titanic)

CREATE (keanu)-[:ATUOU_EM {papel: "Neo"}]->(matrix)
CREATE (leo)-[:ATUOU_EM {papel: "Jack"}]->(titanic)
CREATE (leo)-[:ATUOU_EM {papel: "Jake"}]->(avatar)
CREATE (kate)-[:ATUOU_EM {papel: "Rose"}]->(titanic)

CREATE (alice)-[:SEGUE]->(bob)
CREATE (bob)-[:SEGUE]->(carol);

// nesta query abaixo, selecionei o usuario 'Alice' e retornei quem o usuario segue
MATCH (u:Usuario)-[r:SEGUE]->(u1:Usuario)
WHERE u.nome = 'Alice'
RETURN u, r, u1;

// ja na query abaixo, eu seleciono quem o usuario segue, e quem o usuario seguido segue
MATCH (u:Usuario)-[r:SEGUE*1..2]->(u1:Usuario)
        //esse trecho do código determina os 'passos' que vamos dar, no exemplo esta sendo 2 = 1..2
                //na situação, estamos dando dois passo no caso:
                //u - segue - u1 - segue - u2
                    //passo 1       passo 2
WHERE u.nome = 'Alice'
RETURN u, r, u1;

// na query abaixo eu coloco dois relacionamento na query e sigo a mesma lógica das querys anteriores
MATCH (u:Usuario)-[r:SEGUE|ASSISTIU*1..2]->(u1)
WHERE u.nome = 'Alice'
RETURN u, r, u1;

// na query abaixo, eu faço o mesmo processo das querys anteriores,
// porém dessa vez eu vou dar 3 'passos' sendo assim, retornando também os relacionamento da 3 pessoa no caso o 3° 'passo'
MATCH (u:Usuario)-[s:SEGUE|ASSISTIU*1..3]->(u1:Usuario)
WHERE u.nome = 'Alice'
RETURN u, s, u1;