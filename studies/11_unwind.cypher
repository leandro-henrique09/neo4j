// O UNWIND serve para criar listas, que podem ser percorridas e manipuladas;

// Vou criar uma lista e exercitar com ela
UNWIND [
    {modelo: 'Corsa', ano: 1998, marca: "Chevrolet"},
    {modelo: 'Palio', ano: 2005, marca: "Fiat"},
    {modelo: 'Clio', ano: 2010, marca: "Renault"}
] AS carro

CREATE 
    (c:Carro {
        // aqui nós acessamos cada item da lista "carro", e preenchemos novos nós com as informações de cada dicionario da lista
        modelo: carro.modelo,
        ano: carro.ano,
        marca: carro.marca
    }) 

RETURN c