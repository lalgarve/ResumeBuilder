#!/bin/bash
#  Licensed to the Leila Otto Algarve. See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#  
#    http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied.  See the License for the
#  specific language governing permissions and limitations
#  under the License.  

# Define the project root of RESUME_BUILDER, if it is not defined
[[ ${RESUME_BUILDER_ROOT:-"unset"} == "unset" ]] && export RESUME_BUILDER_ROOT="$(pwd)"

# Define the directory of documents of RESUME_BUILDER, if it is not defined
[[ ${RESUME_BUILDER_DOCS:-"unset"} == "unset" ]] && export RESUME_BUILDER_DOCS="$RESUME_BUILDER_ROOT"/docs

# Define o diretório de scripts do RESUME_BUILDER, if it is not defined
[[ ${RESUME_BUILDER_SCRIPTS:-"unset"} == "unset" ]] && export RESUME_BUILDER_SCRIPTS="$RESUME_BUILDER_ROOT"/scripts

[[ ! -d "$RESUME_BUILDER_SCRIPTS" ]] && mkdir -p "$RESUME_BUILDER_SCRIPTS"

# Verify if RESUME_BUILDER_SCRIPTS is already on the PATH using regex
if [[ ! "$PATH" =~ (^|:)"$RESUME_BUILDER_SCRIPTS"(:|$) ]]; then
    export PATH="$RESUME_BUILDER_SCRIPTS":"$PATH"
    echo "Adicionado $RESUME_BUILDER_SCRIPTS ao PATH"
else
    echo "$RESUME_BUILDER_SCRIPTS já está no PATH"
fi

