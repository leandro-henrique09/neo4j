// Uma boa prática no cypher, é usar o unwind com o merge,
// com o objetivo de não criar nós duplicados casa exista itens duplicado na lista. 

// Aqui vou criar uma lista:
WITH [
    {id: 1, nome: "Smartphone Galaxy S12", preco: 3599.99, categoria: "Eletrônicos", estoque: 50},
    {id: 2, nome: "Notebook Dell Inspiron", preco: 2199.99, categoria: "Eletrônicos", estoque: 25},
    {id: 3, nome: "Tênis Nike Air Max", preco: 599.99, categoria: "Calçados", estoque: 100},
    {id: 4, nome: "Camiseta Polo", preco: 89.99, categoria: "Roupas", estoque: 200},
    {id: 5, nome: "Livro - Clean Code", preco: 79.90, categoria: "Livros", estoque: 30},
    {id: 6, nome: "Mouse Gamer RGB", preco: 199.99, categoria: "Eletrônicos", estoque: 75}
] AS produtos

UNWIND produtos AS produto 
// aqui eu uso o merge para validar se o produto existe ou não, e setando algumas propriedades.
MERGE (p:Produto {id: produto.id})
SET p.nome = produto.nome,
    p.preco = produto.preco,
    p.categoria = produto.categoria,
    p.estoque = produto.estoque

RETURN p;