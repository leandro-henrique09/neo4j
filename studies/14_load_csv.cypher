// Neste arquivo vou mostrar o carregamento de um arquivo csv:


// aqui carreguei o arquivo csv e mencionei o "WITH HEADERS" para dizer para o neo4j que o arquivo tem os nomes das colunas.
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1DTdF-yTo7u0OWklMYARKNIml4AKOVXPc&export=download' AS row

// aqui começo a criar meu nó ou selecionar com o merge, e declarando a propriedade 'movieId' como inteiro.
MERGE (m:Movie {movieId: toInteger(row.movieId)})

// aqui estou setando propriedades do nó "Movie" com os valores do arquivo CSV
SET m.title = row.title,
    m.genre = row.genre

// retorna os nós criados ou encontrados
RETURN m

// limita a exibição a 10 nós
LIMIT 10;
