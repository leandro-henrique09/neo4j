// este arquivo é para mostrar um exemplo usando o apoc para renomear um relacionamento: 

        //o antigo nome do relacionamento |
CALL apoc.refactor.rename.type('AMIGO_DE', 'CONECTADO_COM')
                                        // | o novo nome do relacionamento