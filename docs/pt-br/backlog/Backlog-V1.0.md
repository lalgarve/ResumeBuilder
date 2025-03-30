<!----------------------------------------------------------------------- 
	This is part of the documentation of Deployo.io Resume Builder System.
	Copyright (C) 2025
	Leila Otto Algarve
	See LICENSE-DOCUMENTATION for copying conditions. 
------------------------------------------------------------------------>
# Backlog do ResumeBuilder - Versão 1.0 - Primeira Versão Pronta para Portfólio

O sistema **ResumeBuilder** será desenvolvido usando um **design API-first** com Swagger, focando em oferecer uma proposta de valor única por meio da **integração com inteligência artificial** como diferencial em relação a outros projetos de portfólio. O sistema aproveitará a interface de IA Gemini para prototipagem rápida e implementará funcionalidades principais em Java. Além da funcionalidade, esta versão enfatiza código bem estruturado, testes abrangentes (incluindo mocks de serviços externos) e um pipeline DevOps com Terraform para implantação.

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
- **Implementar AIService em Java**:
  - Criar uma classe `AIService` em Java para integrar com a API Gemini.
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

## Entrada de Descrição de Vaga e Otimização por IA

- **Adicionar entrada de descrição de vaga**:
  - Incluir uma área de texto para o usuário colar a descrição da vaga-alvo.
- **Gerar currículo otimizado por IA**:
  - Usar o `AIService` para processar o currículo base (`parsedData`) e a descrição da vaga, gerando `customData` otimizado.
  - Exibir o conteúdo otimizado para revisão pelo usuário.

## Geração de Currículo

- **Gerar o currículo personalizado**:
  - Combinar o `customData` otimizado por IA, o template selecionado e a paleta de cores em uma saída HTML.
  - Usar a biblioteca **iText** em Java para converter o HTML em um arquivo PDF.
  - Salvar o PDF gerado temporariamente em uma pasta local (ex.: `./output/`).
- **Exibir o currículo gerado**:
  - Fornecer uma prévia do PDF ou um link para download ao usuário.

## Estrutura de Código e Testes

- **Estruturar o código**:
  - Organizar o projeto Java usando uma arquitetura limpa (ex.: camadas separadas para controladores, serviços, modelos e utilitários).
  - Seguir convenções de nomenclatura e estrutura de pacotes (ex.: `com.resumebuilder.controller`, `com.resumebuilder.service`).
- **Escrever testes unitários e de integração**:
  - Usar JUnit e Mockito para testar:
    - Lógica de análise e otimização do `AIService`.
    - Geração de currículo com iText.
  - Mocarem a API Gemini com Mockito para simular respostas durante os testes.
- **Documentar o código**:
  - Adicionar comentários Javadoc a todas as classes e métodos públicos.
  - Incluir um `README.md` com instruções de configuração e visão geral do projeto.

## DevOps e Implantação

- **Configurar pipeline DevOps**:
  - Configurar um pipeline CI/CD usando GitHub Actions:
    - Construir o projeto Java com Maven ou Gradle.
    - Executar testes automaticamente em push/pull requests.
    - Gerar artefatos (ex.: arquivo JAR).
  - Configurar verificações de linting e qualidade de código (ex.: SonarQube ou Checkstyle).
- **Implantar com Terraform**:
  - Escrever scripts Terraform para provisionar infraestrutura AWS:
    - Função Lambda para a API.
    - Bucket S3 para armazenar PDFs gerados.
    - API Gateway para expor endpoints.
