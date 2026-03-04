// Neste arquivo vou mostrar o uso do ORDER BY e LIMIT. 

// Vou aproveitar os nós usado para explicar agregações: 
CREATE
    (fusca:Carro {modelo: 'Fusca', preco: 2000, ano_fabricacao: 1998}),
    (palio:Carro {modelo: 'Palio', preco: 12000, ano_fabricacao: 2008}),
    (corsa:Carro {modelo: 'Corsa', preco: 10000, ano_fabricacao: 2001}),
    (uno:Carro {modelo: 'Uno', preco: 8000, ano_fabricacao: 2015}),
    (astra:Carro {modelo: 'Astra', preco: 20000, ano_fabricacao: 2002});

// No exemplo abaixo, vou ordenar os carros pelos preços do maior pro menor: 
MATCH (c:Carro)
RETURN c.modelo as modelo_carro, c.preco as preco_carro
ORDER BY c.preco DESC;

// Nesse outro exemplo vou pegar os 3 carros mais baratos e mais antigos: 
MATCH (c:Carro)
RETURN c.modelo as modelo_carro, c.preco as preco_carro
ORDER BY c.preco, c.ano_fabricacao 
LIMIT 3;

// No exemplo abaixo vou pegar o carro mais caro: 
MATCH (c:Carro)
RETURN c.modelo as modelo_carro, c.preco as preco_carro
ORDER BY c.preco DESC
LIMIT 1;

// No exemplo abaixo vou pegar o carro mais caro porém com a condição do mais antigo ter preferencia: 
MATCH (c:Carro)
RETURN c.modelo as modelo_carro, c.preco as preco_carro
ORDER BY c.preco DESC, c.ano_fabricacao ASC
LIMIT 1;

