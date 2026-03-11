// Neste arquivo vou criar algumas querys para análise dos dados. 

// Essa query, ve quais musicas o usuario escutou, e recomenda ele escutar as musicas que ele nao escutou.
// O resultado dessa query esta no arquivo csv deste caminho "/projects/music-graph-recommendation/music_recommendation.csv"
MATCH (u:Usuario)-[:OUVIU]->(m:Musica) // aqui seleciono os usuarios que ouviram alguma musica
MATCH (m)<-[:OUVIU]-(outros:Usuario) // aqui pego outros usuarios que tambem ouviu algum musica
MATCH (outros)-[:OUVIU]->(recomendadas:Musica) // aqui seleciono as musicas que outros usuarios escutaram
WHERE NOT (u)-[:OUVIU]->(recomendadas)  // aqui faço uma validação se o usuario 'u' não ouviu a musica recomendada 
RETURN u.nome as nome_usuario, recomendadas.titulo as musica, count(DISTINCT outros) AS score // aqui retorno o nome do usuario, a musica recomendada pra ele e quantas vezes a musica ja foi ouvida por outros usuarios
ORDER BY u.nome, score DESC;

// ==================================================================================

// essa query, eu seleciono todos os artistas que cantam Rock
MATCH (a:Artista)-[:CANTOU]->(:Musica)-[:PERTENCE_A]->(g:Genero {genero: 'Rock'})
RETURN a.nome as Artista;

// resultado da query: 
// 1 - "Imagine Dragons"
// 2 - "Coldplay"
// 3 - "Arctic Monkeys"
// 4 - "Linkin Park"

// =========================================================================

// essa query eu vejo quais pessoas ouviram a musica 'Levitating'
MATCH (u:Usuario)-[:OUVIU]->(m:Musica {titulo: 'Levitating'})
RETURN u.nome as ouvintes_levitating;

// resultado da query
// "Rafael"
// "Beatriz"
// "Thiago"

// ===================================================================

// aqui vejo quais são as 3 musicas mais escutadas: 
MATCH (m:Musica)<-[:OUVIU]-(u:Usuario)
RETURN m.titulo as mais_escutadas, count(DISTINCT u) as qtde_ouvintes
ORDER BY qtde_ouvintes DESC
LIMIT 3;

// =====================================================================

// aqui vejo qual o genêro mais escutado do grafo
MATCH (u:Usuario)-[:OUVIU]->(m:Musica)-[:PERTENCE_A]->(g:Genero)
RETURN g.genero as genero_mais_ouvido, count(DISTINCT u) as qtde_ouvintes
ORDER BY qtde_ouvintes DESC
LIMIT 1;

// resultado da query: 
// genero_mais_ouvido    qtde_ouvintes
// Pop                        15

// =========================================================================

// aqui seleciono os 5 artistas mais ouvidos do grafo
MATCH (u:Usuario)-[:OUVIU]->(m:Musica)<-[:CANTOU]-(a:Artista)
RETURN a.nome as artista_top, count(DISTINCT u) as total_ouvintes
ORDER BY total_ouvintes DESC
LIMIT 5

// resultado da query:
// artista_top         total_ouvintes
// Linkin Park               7
// Arctic Monkeys            7
// Adele                     7
// Post Malone               6
// Taylor Swift              6

