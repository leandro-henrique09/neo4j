# 📊 Estudos de Grafos com Neo4j

Este repositório foi criado com o objetivo de estudar modelagem de dados orientada a grafos utilizando o Neo4j.

## 📁 modulo1

Neste módulo, desenvolvi um modelo de grafo representando um sistema de streaming, contendo:

- 👤 Usuários
- 🎬 Conteúdos (Filmes e Séries)
- 🎭 Gêneros
- 🎬 Profissionais da indústria (Atores e Diretores)

### 🔗 Modelagem

A modelagem inclui:

- Relacionamentos entre atores e conteúdos
- Relacionamentos entre diretores e conteúdos
- Associação entre conteúdos e gêneros
- Avaliações realizadas por usuários

As avaliações foram modeladas como propriedades de relacionamento, permitindo armazenar informações estruturadas como nota, data e comentários diretamente na conexão entre usuário e conteúdo.

## 🛠 Tecnologias utilizadas

- Neo4j
- Cypher Query Language

## 🎯 Objetivo

Praticar conceitos de:
- Modelagem de grafos
- Criação de nós e relacionamentos
- Uso de propriedades em relacionamentos
- Consultas em Cypher
