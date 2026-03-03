// O DELETE é utilizado para remover nós ou relacionamentos.

// Neste exemplo abaixo, irei deletar um nó do grafo.
// Observação: o nó não pode possuir relacionamentos ativos.
MATCH (p:Pessoa {nome: 'João'})
DELETE p;

// Um ponto importante é que não é possível apagar um nó
// quando existe um relacionamento ligado a ele.

// Neste outro exemplo, irei deletar apenas um relacionamento
// desse mesmo usuário.
MATCH (p:Pessoa {nome: 'João'})-[r:CONHECE]-()
DELETE r;

// Além do DELETE, também temos o comando DETACH DELETE.
// O DETACH DELETE deve ser utilizado com cuidado, pois remove o nó selecionado
// e todos os relacionamentos conectados a ele.
// Uma remoção errada pode impactar análises e consultas futuras no grafo.

// No exemplo abaixo, vou deletar o nó e os relacionamentos
// vinculados a ele utilizando DETACH DELETE:
MATCH (p:Pessoa {nome: 'João'})
DETACH DELETE p;