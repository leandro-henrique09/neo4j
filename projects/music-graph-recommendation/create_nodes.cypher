// Neste arquivo faço a criação dos nós de Artistas, Músicas, Usuários e Gêneros.


// CRIAÇÃO DOS NÓS DE MÚSICAS
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1DmwQgI4lUsqPiZeNmyI7H3_AHGqpy-zP&export=download' AS musica
MERGE (m:Musica {musicaId: toInteger(musica.musica_id)})
SET m.titulo = musica.titulo,
    m.genero = musica.genero
RETURN m;



// CRIAÇÃO DOS NÓS DE USÚARIOS
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1-oAPYSwtwbcolzo3BUB4Dh9oVgfOjZRD&export=download' AS usuario
MERGE (u:Usuario {usuarioId: toInteger(usuario.usuario_id)})
SET u.nome = usuario.nome,
    u.pais = usuario.pais
RETURN u;



// CRIAÇÃO DOS NÓS DE ARTISTAS
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1oPaWQhrgN0xJIOJcaRR1eETDNiea0wAC&export=download' AS artista
MERGE (a:Artista {artistaId: toInteger(artista.artista_id)})
SET a.nome = artista.nome,
    a.pais = artista.pais
RETURN a;


// CRIAÇÃO DOS NÓS DE GÊNERO
LOAD CSV WITH HEADERS FROM 'https://drive.google.com/u/0/uc?id=1DmwQgI4lUsqPiZeNmyI7H3_AHGqpy-zP&export=download' AS genero
MERGE (g:Genero {genero: genero.genero})
RETURN g