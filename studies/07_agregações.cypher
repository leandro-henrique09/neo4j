// Neste arquivo está a pratica de funções de agregação e sumarização: 
// Primeiro vou criar alguns nós para melhor entendimento: 
CREATE
    (fusca:Carro {modelo: 'Fusca', preco: 2000, ano_fabricacao: 1998}),
    (palio:Carro {modelo: 'Palio', preco: 12000, ano_fabricacao: 2008}),
    (corsa:Carro {modelo: 'Corsa', preco: 10000, ano_fabricacao: 2001}),
    (uno:Carro {modelo: 'Uno', preco: 8000, ano_fabricacao: 2015}),
    (astra:Carro {modelo: 'Astra', preco: 20000, ano_fabricacao: 2002});

// Aqui vamos contar quantos veiculos temos cadastrados: 
MATCH (c:Carro)
RETURN count(c) as total_carros;

// Aqui vou pegar a soma de todos os preços
MATCH (c:Carro)
RETURN sum(c.preco) as total_precos;

// Aqui um exemplo pegando a media de preço dos carros: 
MATCH (c:Carro)
RETURN avg(c.preco) as media_valores;

// Aqui vamos pegar o carro mais antigo da lista:
MATCH (c:Carro)
RETURN min(c.ano_fabricacao) as carro_mais_antigo;

// Aqui vamos pegar o carro mais novo da lista:
MATCH (c:Carro)
RETURN max(c.ano_fabricacao) as carro_mais_novo