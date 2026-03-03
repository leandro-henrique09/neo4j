# 📊 Estudos de Grafos com Neo4j

Este repositório documenta minha evolução prática em modelagem de dados orientada a grafos utilizando o Neo4j e a linguagem Cypher.

O conteúdo está organizado entre estudos teóricos/práticos e projetos aplicados.

---

## 📁 studies

Nesta pasta estão reunidos:

- Explicações sobre os principais comandos do Cypher
- Exemplos práticos de consultas
- Demonstrações de criação e manipulação de nós e relacionamentos
- Testes e experimentações com modelagem em grafos

---

## 📁 projects

Nesta pasta estão organizados projetos práticos aplicando os conceitos estudados.

### 📌 streaming-graph

Projeto que modela um sistema de streaming utilizando Neo4j, contendo:

- 👤 Usuários
- 🎬 Conteúdos (Filmes e Séries)
- 🎭 Gêneros
- 🎥 Profissionais da indústria (Atores e Diretores)

### 🔗 Modelagem aplicada

O projeto implementa:

- Relacionamentos entre atores e conteúdos
- Relacionamentos entre diretores e conteúdos
- Associação entre conteúdos e gêneros
- Avaliações realizadas por usuários

As avaliações foram modeladas como propriedades de relacionamento, permitindo armazenar informações como data e comentário diretamente na conexão entre usuário e conteúdo — explorando uma das principais vantagens do modelo orientado a grafos.

---

## 🛠 Tecnologias utilizadas

- Neo4j
- Cypher Query Language

---

## 🎯 Objetivo

Consolidar conhecimentos em:

- Modelagem de grafos
- Estruturação de nós e relacionamentos
- Uso de propriedades em relacionamentos
- Construção de consultas eficientes em Cypher
- Aplicação prática dos conceitos em cenários reais