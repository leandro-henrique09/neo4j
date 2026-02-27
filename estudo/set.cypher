// O "SET" é utilizado para atualizar propriedades ou labels de um nó já existentes,
// ou adicionar novos labels/propriedades

// Vamos criar um exemplo e colocar exemplos de uso com o SET.

// aqui criamos dois nós
CREATE
    (l:Pessoa {nome: "Leandro"}),
    (m:Pessoa {nome: "Marcos"});

// como adicionar uma propriedade a esse nó
MATCH (l:Pessoa {nome: "Leandro"})
SET l.idade = 25
RETURN l;
// =========================================== //

// como adicionar um label a esse nó
MATCH (m:Pessoa {nome: "Marcos"})
SET m:Brasileiro
    // agora, além de ter o label "Pessoa", ele também tera o label "Brasileiro"
RETURN m
