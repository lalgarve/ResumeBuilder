<!----------------------------------------------------------------------- 
    Parte da documentação do Deployo.io Resume Builder System.
    Copyright (C) 2025
    Leila Otto Algarve
    Licenciado sob a GNU Free Documentation License v1.3 ou posterior.
    Consulte LICENSE-DOCUMENTATION para mais detalhes. 
------------------------------------------------------------------------>
# Scripts

## setup_resumebuilder.sh

Configura o `PATH` e as variáveis de ambiente para o projeto "ResumeBuilder". Este script deve ser executado a partir do diretório raiz do projeto.

**Uso:** source scripts/setup_resumebuilder.sh

## sed_files.sh

Este script permite executar um programa `sed` em vários arquivos, combinando os comandos `find` e `sed`. Os arquivos são localizados usando um padrão de nome de arquivo no diretório especificado e em todos os seus subdiretórios. Ele foi projetado para modificar múltiplos arquivos em lote, garantindo que sejam editáveis e tratando erros de maneira adequada.

**Uso:** sed_files.sh <diretório> <padrão_nome_arquivo> <programa_sed>

**Argumentos:**

1. **<diretório>**: O diretório onde os arquivos serão pesquisados.
2. **<padrão_nome_arquivo>**: O padrão para os nomes dos arquivos a serem processados (ex.: "*.txt").
3. **<programa_sed>**: O comando `sed` a ser executado em cada arquivo correspondente.

**Exemplo:**

Para substituir todas as ocorrências de "foo" por "bar" em todos os arquivos com extensão `txt` no diretório `/opt/app` e seus subdiretórios:

```bash
./sed_files.sh /opt/app *.txt 's/foo/bar/g'
```

**Funcionalidades:**

- Verifica se o número de argumentos está correto.
- Confirma a existência do diretório especificado.
- Cria um arquivo temporário para cada arquivo processado, evitando perda de dados em caso de falha.
- Verifica as permissões de escrita de cada arquivo antes de modificá-lo.
- Reporta erros caso o comando `sed` falhe.
- Garante a remoção do arquivo temporário, mesmo se o script for interrompido.