// nesse arquivo vou criar alguns nós de carros e usar o 
// foreach para percorrer cada nó e o set para setar propriedades

CREATE
    (palio:Carro {nome: 'Palio', ano: 2010}),
    (celta:Carro {nome: 'Celta', ano: 2005}),
    (fusca:Carro {nome: 'Fusca', ano: 1985}),
    (golf:Carro {nome: 'Golf', ano: 2000}),
    (gol:Carro {nome: 'Gol', ano: 1999}),
    (parati:Carro {nome: 'Parati', ano: 2004}),
    (hb20:Carro {nome: 'Hb20', ano: 2013}),
    (fiesta:Carro {nome: 'Fiesta', ano: 2016}),
    (mobi:Carro {nome: 'Mobi', ano: 2022});


MATCH (c:Carro) // aqui seleciono os nós de carros
WITH collect(c) as carros // aqui estou pegando todos os nós e colocando dentro de uma lista com o collect()
FOREACH (carro in carros | // aqui começo o foreach como se fosse o for do python para cada item da lista
    SET carro.status = 
        CASE // aqui estou criando um case para setar propriedades baseada no ano do veiculo
            WHEN carro.ano < 2000 THEN 'antigo'
            WHEN carro. ano > 2000 AND carro.ano < 2015 THEN 'seminovo'
            ELSE 'novo'
        END
)