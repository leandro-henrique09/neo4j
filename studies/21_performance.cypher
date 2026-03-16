// neste arquivo vou estudar um pouco sobre boas praticas de performance

// em bancos com muitos dados, fazer uma query que exija muito do sistema pode acabar dando problemas de
// performance, sendo assim existe algumas boas praticas para evitar o mau funcionamento das querys. 

// EXPLAIN
// o explain é usado para mostrar o plano de execução da query, sendo assim ele não roda a query.
// apenas mostra como a query vai rodar no sistema


// neste exemplo, o explain faz todo o processo da query(sem executar) e mosta oq foi gasto em cada etapa.
EXPLAIN
MATCH (u:Usuario)-[r:CONHECE]->(u2:Usuario)
RETURN u, r, u2;

// ========================================================================================================

// PROFILE

// diferente do explain, o profile executa a query e trás todos os dados do sistema(o que foi usado de memória)
// foi feito abaixo um exemplo, mostrando como se usar o profile
PROFILE
MATCH (u:Usuario)-[r:CONHECE]->(u2:Usuario)
RETURN u, r, u2;