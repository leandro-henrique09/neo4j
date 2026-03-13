// as listas ligadas, é uma forma de criar um 'algoritmo' de etapas, como no exemplo que criei
// onde a pessoa entra em um site, acessa a pagina de categoria, acessa um produto, adiciona no carrinho,
// vai pro chekout e depois finaliza a compra.

// aqui fiz a criação dos nós de Eventos conforme descrito acima
CREATE
    (e1:Evento {etapa: 1, funcao: 'login'}),
    (e2:Evento {etapa: 2, funcao: 'navegar'}),
    (e3:Evento {etapa: 3, funcao: 'acessar pagina de categoria'}),
    (e4:Evento {etapa: 4, funcao: 'visualizar produto'}),
    (e5:Evento {etapa: 5, funcao: 'adicionar no carrinho'}),
    (e6:Evento {etapa: 6, funcao: 'acessar checkout'}),
    (e7:Evento {etapa: 7, funcao: 'finalizar compra'});

// aqui criei um usuario de exemplo 
CREATE (u:Usuario {nome: 'Leandro'})

// aqui usei o merge para verificar se ja existia o relacionamento de 'usuario' e 'etapa1', caso nao tivesse o merge ja criaria
MERGE (u:Usuario {nome: 'Leandro'})-[:ACESSOU]-(:Evento {etapa: 1})
RETURN u

// nesta query abaixo, eu crio as listas ligadas com o apoc

MATCH (e:Evento) // esta linha pego todos os nós de Eventos
WITH e ORDER BY e.etapa // ordeno os nós pelo numero de cada etapa
WITH collect(e) as eventos // pego todos os nós de evento e coloco dentro de uma lista com o collect()


CALL apoc.nodes.link(eventos,                          'NEXT') // aqui é onde acontece as listas ligadas com o 'apoc.nodes.link'
            //neste caso o apoc percorre              aqui eu determino que os relacionamentos
            //pela lista de eventos que criamos       vão ser chamados de 'NEXT'

RETURN count(*) as conexoes_criadas // aqui retorno quantas conexoes foram criadas