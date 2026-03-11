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

--- 

---

---

---

### 📌 music-recommendation-graph

Projeto que modela um sistema de streaming musical utilizando Neo4j, contendo:

- 👤 Usuários
- 🎵 Músicas
- 🎤 Artistas
- 🎭 Gêneros
- 🔗 Modelagem aplicada

## O projeto implementa:

- Relacionamentos entre artistas e músicas (CANTOU)
- Associação entre músicas e gêneros (PERTENCE_A)
- Registro de quais músicas os usuários ouviram (OUVIU)
- Contagem de interações e recomendações baseadas no comportamento de usuários similares
- As recomendações foram construídas explorando os relacionamentos do grafo, permitindo sugerir músicas que usuários 
  semelhantes já ouviram, aproveitando o poder do modelo orientado a grafos para análises complexas de conexões.

## 🛠 Tecnologias utilizadas

- Neo4j
- Cypher Query Language
- CSVs para carregamento inicial dos dados

## 🎯 Objetivo

- Consolidar conhecimentos em:
- Modelagem de grafos para dados musicais
- Estruturação de nós e relacionamentos entre usuários, músicas, artistas e gêneros
- Uso de propriedades em nós e relacionamentos
- Construção de consultas e análises eficientes em Cypher
- Implementação prática de recomendações personalizadas em um sistema de streaming musical