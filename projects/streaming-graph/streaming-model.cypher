// Neste arquivo eu criei todos os nós de atores/diretores, usuarios, filmes, series e os de generos.
// No final dessa query, eu realizei as conexões entre ator-filme, diretor-filme, filme-genero, usuario-filme, usuario-serie 

// Nessa mesma pasta, eu deixei um arquivo png com nome de "graph-visualization.png" para ver todo esse código visualmente.

CREATE
  (jason:Actor:Director{name:'Jason'}),
  (vin:Actor:Director{name:'Vin'}),
  (sebastian:Director{name:'Sebastian'}),
  (keanu:Actor{name:'Keanu'}),
  (malcom:Actor{name:'Malcom'}),
  (leandro:User{name:'Leandro'}),
  (marcos:User{name:'Marcos'}),
  (acao:Genre{name:'Ação'}),
  (aventura:Genre{name:'Aventura'}),
  (mad:Movie{name:'Mad Max'}),
  (wick:Movie{name:'John Wick 4: Baba Yaga'}),
  (maverick:Movie{name:'Top Gun: Maverick'}),
  (missao:Movie{name:'Missão: Impossível - Efeito Fallout (2018)'}),
  (percy:Series{name:'Percy Jackson e os Olimpianos (2023)'}),
  (avatar:Series{name:'Avatar: O Último Mestre do Ar'}),
  (thelast:Series{name:'The Last of Us (2023)'}),
//   aqui começo a criar os relacionamentos
  (jason)-[:DIRECTED]->(missao),
  (jason)-[:ACTED_IN]->(mad),
  (vin)-[:ACTED_IN]->(wick),
  (vin)-[:DIRECTED]->(wick),
  (sebastian)-[:DIRECTED]->(maverick),
  (malcom)-[:ACTED_IN]->(avatar),
  (keanu)-[:ACTED_IN]->(percy),
  (keanu)-[:ACTED_IN]->(wick),
  (leandro)-[:WATCHED {rating:5, comment:'Poderia ser melhor'}]->(maverick),
  (leandro)-[:WATCHED {rating:10, comment:'Série excelente, ansioso pela próxima temporada.'}]->(thelast),
  (marcos)-[:WATCHED {rating:8.5, comment:'Poderia ter um final melhor'}]->(wick),
  (mad)-[:IN_GENRE]->(acao),
  (missao)-[:IN_GENRE]->(acao),
  (wick)-[:IN_GENRE]->(acao),
  (maverick)-[:IN_GENRE]->(acao),
  (percy)-[:IN_GENRE]->(aventura),
  (avatar)-[:IN_GENRE]->(aventura),
  (thelast)-[:IN_GENRE]->(aventura)
