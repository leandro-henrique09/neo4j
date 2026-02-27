// O "REMOVE" é usado para remover propriedades ou labels de um nó.

// Vamos criar um exemplo e colocar exemplos de uso com o REMOVE.

// aqui criamos dois nós:
CREATE
    (bmw:Carro:Luxo {modelo:'320i', ano: 2010}),
    (audi:Carro:Luxo {modelo: 'A5', ano: 2016});

// ====================================================================

// aqui nós vamos remover a propriedade 'ano' do Carro 'BMW'
MATCH (bmw:Carro {modelo:'320i'})
REMOVE bmw.ano
RETURN bmw;

// ====================================================================

// aqui nós vamos remover o label 'Luxo' do carro 'audi'
MATCH (audi:Carro {modelo: 'A5'})
REMOVE audi:Luxo
RETURN audi;