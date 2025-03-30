<!----------------------------------------------------------------------- 
	This is part of the documentation of Deployo.io Resume Builder System.
	Copyright (C) 2025
	Leila Otto Algarve
	See LICENSE-DOCUMENTATION for copying conditions. 
------------------------------------------------------------------------>
# Cabeçalhos das licenças

## Scripts
```
  Licensed to the Leila Otto Algarve under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at
  
    http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License. 
```

## Documentação
```
	This is part of the documentation of Deployo.io Resume Builder System.
	Copyright (C) 2025
	Leila Otto Algarve
	See LICENSE-DOCUMENTATION for copying conditions. 
```

## Arquivos com Cabeçalhos de Licenças

No diretório `<diretório_raiz_do_projeto>/scripts/headers` estão os arquivos que contêm os cabeçalhos de licenças para cada tipo de arquivo do sistema. Esses arquivos seguem o padrão de nomenclatura `license_header.ext`, onde `ext` representa a extensão padrão utilizada no sistema.

As extensões contempladas são:
- `sh`: Scripts de Shell
- `md`: Arquivos Markdown
- `puml`: Arquivos PlantUML

### Formato dos Arquivos

- **Linha 1**: Nome do tipo de arquivo.
- **Linha 2**: Número da linha do arquivo antes da qual o cabeçalho de licença deve ser inserido.
- **Linha 3**: Quantidade de linhas a serem analisadas para determinar se o arquivo já possui um cabeçalho de licença.
- **Linha 4**: Expressão regular (regex) para verificar se o arquivo contém o cabeçalho de licença.
- **Demais linhas**: O texto da licença, formatado como comentário no estilo apropriado ao tipo de arquivo.
