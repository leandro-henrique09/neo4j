## 🎵 Music Recommendation Graph

Este projeto utiliza Neo4j para criar um grafo de usuários, músicas, artistas e gêneros, permitindo realizar análises e recomendações musicais.

O objetivo é mostrar como um banco de dados em grafo pode ser usado para entender preferências de usuários e recomendar músicas personalizadas.

## 📂 Estrutura do Projeto

📂 docs
Esta armazenado a imagem para a visualização do grafo, no arquivo 'graph-visualization.png'

O projeto contém:

Nós:

Músicas → título e gênero;
Usuários → nome e país;
Artistas → nome e país;
Gêneros → categorias musicais;

Relacionamentos:

Artista → Música (CANTOU)
Música → Gênero (PERTENCE_A)
Usuário → Música (OUVIU)

Análises e Recomendações:

Identificação das músicas mais escutadas
Ranking dos artistas mais populares
Determinação do gênero mais popular
Recomendações de músicas que o usuário ainda não ouviu, baseadas no comportamento de outros usuários

## 🗂 CSVs Utilizados

Musicas → musica_id, titulo, genero
Usuarios → usuario_id, nome, pais
Artistas → artista_id, nome, pais
Os CSVs são carregados via LOAD CSV WITH HEADERS no Neo4j.

## ⚡ Boas práticas aplicadas

Uso de MERGE para evitar duplicidade de nós e relacionamentos
Conversão de IDs para inteiros (toInteger())
Contagem de usuários distintos (count(DISTINCT u)) para análises precisas
Limitação do retorno (LIMIT) para testes e visualização
Comentários claros e documentação das etapas

## 🎯 Objetivos do Projeto

Explorar relações entre usuários, músicas, artistas e gêneros
Identificar tendências musicais e os artistas/gêneros mais populares
Implementar um sistema de recomendação baseado em comportamento de usuários semelhantes
Demonstrar o poder do Neo4j e análise em grafos para dados musicais
