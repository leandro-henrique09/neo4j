// A biblioteca APOC Core fornece acesso a procedimentos e funções definidos pelo usuário, que ampliam o uso da linguagem de consulta
//  Cypher para áreas como integração de dados, algoritmos de grafos e conversão de dados.


// aqui estou usando o apoc para consumir esse arquivo json
CALL apoc.load.json('https://jsonplaceholder.typicode.com/users')
// o yield retorna cada valor do json como user
YIELD value as user
// aqui estou criando um usuario e definindo as propriedades dele
CREATE (u:Usuario {
    id: user.id,
    nome: user.name,
    email: user.email,
    cidade: user.address.city,
    empresa: user.company.name
})
// aqui retorna a quantos usuarios foram criados
RETURN count(*) as usuarios_criados;

// =====================================================================
// aqui estou usando o apoc para consumir esse arquivo json
CALL apoc.load.json('https://jsonplaceholder.typicode.com/posts')
// o yield retorna cada valor do json como post
YIELD value as post
// selecionando o nó de usuario, cujo id do usuario sejo o mesmo id do post.
MATCH (u:Usuario {id: post.userId})
// criando o nó post e definindo propriedades
CREATE (p:Post {
  id: post.id,
  titulo: post.title,
  conteudo: post.body
})
// criando um relacionamento entre usuario e post
CREATE (u)-[:ESCREVEU]->(p)
// retorna quantos posts foram criados.
RETURN count(*) as posts_criados