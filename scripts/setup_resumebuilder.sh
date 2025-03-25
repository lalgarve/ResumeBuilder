#!/bin/bash

# Define a raiz do projeto RESUME_BUILDER, se não estiver definida
[[ ${RESUME_BUILDER_ROOT:-"unset"} == "unset" ]] && export RESUME_BUILDER_ROOT="$(pwd)"

# Define o diretório de documentos do RESUME_BUILDER, se não estiver definido
[[ ${RESUME_BUILDER_DOCS:-"unset"} == "unset" ]] && export RESUME_BUILDER_DOCS="$RESUME_BUILDER_ROOT"/docs

# Define o diretório de scripts do RESUME_BUILDER
RESUME_BUILDER_SCRIPTS="$RESUME_BUILDER_ROOT"/scripts
[[ ! -d "$RESUME_BUILDER_SCRIPTS" ]] && mkdir -p "$RESUME_BUILDER_SCRIPTS"

# Verifica se RESUME_BUILDER_SCRIPTS já está no PATH usando regex
if [[ ! "$PATH" =~ (^|:)"$RESUME_BUILDER_SCRIPTS"(:|$) ]]; then
    export PATH="$RESUME_BUILDER_SCRIPTS":"$PATH"
    echo "Adicionado $RESUME_BUILDER_SCRIPTS ao PATH"
else
    echo "$RESUME_BUILDER_SCRIPTS já está no PATH"
fi

# Mostra o PATH atualizado
echo "Root: ""$RESUME_BUILDER_ROOT"
echo "Docs: ""$RESUME_BUILDER_DOCS"
