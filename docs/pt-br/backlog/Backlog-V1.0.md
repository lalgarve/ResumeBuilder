<!-----------------------------------------------------------------------
    This is part of the documentation of Deployo.io Resume Builder System.
    Copyright (C) 2025
    Leila Otto Algarve
    Licensed under the GNU Free Documentation License v1.3 or later.
    See LICENSE-DOCUMENTATION for details.
------------------------------------------------------------------------>
# Backlog do ResumeBuilder - Versão 1.0 - Primeira Versão Pronta para Portfólio

O sistema **ResumeBuilder** será desenvolvido usando um **design API-first** com Swagger, focando em oferecer uma proposta de valor única por meio da **integração com inteligência artificial** como diferencial em relação a outros projetos de portfólio. O sistema aproveitará a interface de IA Gemini para prototipagem rápida e implementará funcionalidades principais em Java com **Quarkus**. Além da funcionalidade, esta versão enfatiza código bem estruturado, testes abrangentes (incluindo mocks de serviços externos) e um pipeline DevOps com Terraform para implantação.

Abaixo está o backlog completo para a primeira versão.

## Design e Implementação da API

- **Projetar a API usando Swagger**:
  - Definir endpoints para seleção de usuário, recuperação de currículo, escolha de template, otimização por IA e geração de currículo.
  - Gerar documentação Swagger (`swagger.yaml`) para todas as rotas da API.
  - Implementar endpoints iniciais com respostas mock, migrando para lógica completa conforme o desenvolvimento avança.

## Gerenciamento de Usuários e Currículos Base

- **Implementar quatro usuários predefinidos**:
  - Criar quatro usuários distintos, cada um com um avatar único, cargo e currículo base pré-carregado:
    - Usuário 1: "Engenheiro de Software" com um currículo focado em tecnologia.
    - Usuário 2: "Designer Gráfico" com um currículo criativo.
    - Usuário 3: "Gerente de Projetos" com um currículo voltado para gestão.
    - Usuário 4: "Especialista em Marketing" com um currículo orientado a vendas.
  - Armazenar dados de usuários e currículos base em um arquivo JSON ou estrutura em memória inicialmente (a ser substituído por um banco de dados em versões futuras).
- **Exibir interface de seleção de usuário**:
  - Apresentar uma tela mostrando os quatro avatares com seus cargos após o lançamento do sistema.
  - Permitir a seleção do usuário por clique no avatar.

## Visualização do Currículo Base

- **Exibir o currículo base**:
  - Mostrar o currículo base pré-carregado do usuário selecionado em um formato legível (ex.: HTML ou texto simples).
  - Incluir campos como nome, cargo, experiência, educação e habilidades.

## Integração de IA com Gemini

- **Prototipar funcionalidade de IA com Gemini**:
  - Usar a interface Gemini para criar um protótipo rápido para testar comandos e prompts.
  - Testar prompts básicos para:
    - Analisar dados brutos do currículo em campos estruturados (ex.: extrair experiência e habilidades).
    - Gerar sugestões de melhoria com base em descrições de vagas.
  - Documentar os prompts mais eficazes para implementação.
- **Implementar AIService em Java com Quarkus**:
  - Criar uma classe `AIService` em Java para integrar com a API Gemini, utilizando os recursos do Quarkus para otimização.
  - Implementar métodos para:
    - Analisar dados brutos do currículo (`parseResume(rawData)` → `parsedData`).
    - Otimizar o conteúdo do currículo com base em descrições de vagas (`optimizeResume(parsedData, jobDescription)` → `customData`).
  - Gerenciar autenticação da API (ex.: chave API ou OAuth) e casos de erro.

## Opções de Template e Personalização

- **Oferecer seleção de template**:
  - Apresentar uma tela com dois templates disponíveis após exibir o currículo base:
    - Template 1: "Moderno" - Layout limpo com títulos em negrito.
    - Template 2: "Clássico" - Layout tradicional com estilo formal.
  - Permitir que o usuário escolha um template.
- **Adicionar seleção de paleta de cores**:
  - Fornecer uma paleta de cores simples com 3-5 opções (ex.: tons de azul, verde, vermelho).
  - Aplicar o esquema de cores selecionado ao template escolhido.

## Testes

- **Implementar testes unitários**:
  - Criar testes unitários para todos os componentes do sistema, incluindo mocks de serviços externos (API Gemini).
- **Realizar testes de integração**:
  - Testar a integração entre os diferentes módulos do sistema para garantir a funcionalidade coesa.

## DevOps e Implantação

- **Criar pipeline de CI/CD com Terraform**:
  - Automatizar o processo de build, teste e deploy usando um pipeline de CI/CD com Terraform para provisionamento da infraestrutura na AWS (Lambda, API Gateway, etc.).
- **Implementar monitoramento e logging**:
  - Configurar monitoramento básico e logging para rastrear o desempenho do sistema e diagnosticar problemas.