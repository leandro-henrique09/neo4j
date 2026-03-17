// o comando CREATE INDEX é usado para criar indexes em propriedades de
//  nós ou relacionamentos, com o objetivo de acelerar as consultas.

// EXEMPLO 
CREATE INDEX nome_usuario_index // aqui crio o indice
FOR (u:Usuario) // definindo que o índice será aplicado aos nós com o label Usuario
ON (u.nome); // criando indice na propriedade nome dos nós 'Usuario'.

// EXEMPLO VALIDANDO SE JÁ NÃO EXISTE INDEX
CREATE INDEX nome_usuario_index IF NOT EXISTS // só acrescentando o 'IF NOT EXISTS'
FOR (u:Usuario)
ON (u.nome);

// PARA VISUALIZAR TODOS OS INDEX DO GRAFO
SHOW INDEXES