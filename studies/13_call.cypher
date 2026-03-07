// O CALL tem varias funcionalidades, mas uma delas é executar subquerys como no exemplo abaixo:

// Vou criar alguns nós com relacionamentos ligados a empresas e 
// depois vou usar o CALL para fazer uma subconsulta

CREATE 
    (joao:Pessoa {name: 'João'}),
    (pedro:Pessoa {name: 'Pedro'}),
    (marcos:Pessoa {name: 'Marcos'}),
    (matheus:Pessoa {name: 'Matheus'}),
    (lucas:Pessoa {name: 'Lucas'}),
    (microsoft:Enterprise {name: 'Microsoft'}),
    (apple:Enterprise {name: 'Apple'}),
    (neo:Enterprise {name: 'Neo4j'}),
    (joao)-[:WORKS_IN]->(microsoft),
    (pedro)-[:WORKS_IN]->(microsoft),
    (marcos)-[:WORKS_IN]->(apple),
    (matheus)-[:WORKS_IN]->(neo),
    (lucas)-[:WORKS_IN]->(neo);

// agora vou mostrar os nós "Empresa" e mostrar as pessoas que trabalham nelas;

MATCH (e:Enterprise) // aqui eu selecionei todos os nós "Empresas"
CALL (e) { // Nessa linha eu importo o nó "e" para dentro da subquery, para ser usado na consulta
    MATCH (p:Pessoa)-[:WORKS_IN]->(e) // aqui estou selecionando as pessoas que trabalham nas empresas
    RETURN collect(p) AS Pessoas   // retornando o valor das pessoas em uma lista usando o collect() e colocando um alias de "Pessoas"
}
RETURN e AS Empresa, Pessoas