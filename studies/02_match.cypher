// O "MATCH" é usado em praticamente todas as consultas porque é ele que busca os dados dentro do grafo.
// O "RETURN" também é importante nas consultas, ele retorna os nós e relacionamento selecionados pelo "MATCH"

// Exemplos de uso:

// Neste exemplo, o MATCH está selecionando todos os nós e retornando eles com o RETURN.
MATCH (n)
RETURN n;
// =========================================================================================================//

// Neste exemplo, o MATCH busca padrões onde existe um nó conectado a outro por um relacionamento.
// O RETURN retorna os nós e o relacionamento encontrados.
MATCH (n)-[r]->(m)
RETURN n, r, m;
// ==========================================================================================================//

// Como procurar um nó pelo label:
MATCH (n:Pessoa|Diretor)
        //  Nesse caso o "|" corresponde um "OU", ficando como resultado buscar pelo label "Pessoa" ou "Diretor"
RETURN n;

// =============================================================================================================//

// Como procurar um nó que não seja verdadeiro:
MATCH (n:!Pessoa)
        // Nesse caso o sinal de "!" indica que quer acessar um label que não seja "Pessoa"
RETURN n;