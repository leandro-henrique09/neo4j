// Aqui estou criando a relação entre artistas e músicas
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1DmwQgI4lUsqPiZeNmyI7H3_AHGqpy-zP&export=download' AS musica
MATCH (m:Musica {musicaId: toInteger(musica.musica_id)})
MATCH (a:Artista {artistaId: toInteger(musica.artista_id)})

MERGE (a)-[:CANTOU]->(m)
RETURN a, m
LIMIT 10;

// Aqui estou criando a relação entre musicas e generos. 
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1DmwQgI4lUsqPiZeNmyI7H3_AHGqpy-zP&export=download' AS genero
MATCH (g:Genero {genero: genero.genero})
MATCH (m:Musica {genero: genero.genero})

MERGE (m)-[:PERTENCE_A]->(g)
RETURN g,m