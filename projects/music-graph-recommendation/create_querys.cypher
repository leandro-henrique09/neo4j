// Neste arquivo vou criar algumas querys para análise dos dados. 

// essa query, ve quais musicas o usuario escutou, e recomenda ele escutar as musicas que ele nao escutou
// o resultado dessa query esta no arquivo csv deste caminho "/projects/music-graph-recommendation/music_recommendation.csv"
MATCH (u:Usuario)-[:OUVIU]->(m:Musica) // aqui seleciono os usuarios que ouviram alguma musica
MATCH (m)<-[:OUVIU]-(outros:Usuario) // aqui pego outros usuarios que tambem ouviu algum musica
MATCH (outros)-[:OUVIU]->(recomendadas:Musica) // aqui seleciono as musicas que outros usuarios escutaram
WHERE NOT (u)-[:OUVIU]->(recomendadas)  // aqui faço uma validação se o usuario 'u' não ouviu a musica recomendada 
RETURN u.nome as nome_usuario, recomendadas.titulo as musica, count(DISTINCT outros) AS score // aqui retorno o nome do usuario, a musica recomendada pra ele e quantas vezes a musica ja foi ouvida por outros usuarios
ORDER BY u.nome, score DESC;

// essa query, eu seleciono todos os artistas que cantam Rock
MATCH (a:Artista)-[:CANTOU]->(:Musica)-[:PERTENCE_A]->(g:Genero {genero: 'Rock'})
RETURN a.nome as Artista

// resultado da query: 
// 1 - "Imagine Dragons"
// 2 - "Coldplay"
// 3 - "Arctic Monkeys"
// 4 - "Linkin Park"
