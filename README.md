Projeto CAOS – Controle de Ocorrências  
Modelagem, Criação e Manipulação de Dados com SQL

Este repositório contém toda a implementação prática do banco de dados do sistema **CAOS – Controle de Ocorrências**, desenvolvido como parte da disciplina de Banco de Dados.

Aqui você encontrará:

✔ Modelo lógico aplicado  
✔ Scripts completos em SQL (CRUD)  
✔ Instruções de execução  
✔ Scripts de criação, inserção, consulta, atualização e remoção  
✔ Estrutura recomendada para avaliação acadêmica  

---

Estrutura do Repositório

/sql
├── 01_create_tables.sql
├── 02_insert.sql
├── 03_select.sql
├── 04_update.sql
├── 05_delete.sql
README.md


A pasta **/sql** contém todos os scripts necessários para criar e manipular o banco.

---

1. Modelo Lógico (Resumo)

O modelo lógico foi elaborado a partir do DER revisado, contendo as entidades:

- Usuario  
- Pessoa  
- Equipe  
- Veiculo  
- Ocorrencia  
- Relatorio  
- Ocorrencia_Pessoa (tabela associativa)  
- Ocorrencia_Veiculo (tabela associativa)

Todas as tabelas foram normalizadas até **3FN**, eliminando redundâncias e garantindo consistência.

---

 2. Requisitos Técnicos

O projeto foi desenvolvido e testado em:

- **MySQL Server 8.0**  
- **MySQL Workbench 8.0**

Compatível com ajustes para:

- MariaDB  
- PostgreSQL / PgAdmin (alterar AUTO_INCREMENT → SERIAL ou IDENTITY)

---

 3. Como Executar o Projeto

 3.1 Criar o Banco

Execute no Workbench:

```sql
CREATE DATABASE caos;
USE caos;

Executar o Script de Criação das Tabelas
sql/01_create_tables.sql

Execute todas as instruções para criar:

Tabelas principais

Tabelas associativas

Chaves primárias

Chaves estrangeiras (FK)

Inserir Dados
sql/02_insert.sql

Insere dados reais nas tabelas:

Usuario

Pessoa

Equipe

Veiculo

Ocorrencia

Relatorio

Ocorrencia_Pessoa

Ocorrencia_Veiculo

Executar Consultas (SELECT)
sql/03_select.sql
Inclui consultas com:

WHERE

JOIN

ORDER BY

LIMIT

Filtragens reais por atributos

Associações entre tabelas

Atualizar Dados (UPDATE)
sql/04_update.sql
Inclui:

Atualização de telefone

Alteração de status

Correção de local da ocorrência

Excluir Dados (DELETE)
sql/05_delete.sql
Exclui registros com segurança:

Remoção de associação pessoa–ocorrência

Remoção de veículo

Exclusão de pessoa por ID

Todos os comandos respeitam chaves estrangeiras.

Scripts Incluídos
📁 01_create_tables.sql

Criação completa do esquema do banco.

📁 02_insert.sql

Inserção de dados iniciais reais.

📁 03_select.sql

Consultas avançadas e demonstração do relacionamento entre tabelas.

📁 04_update.sql

Atualizações específicas respeitando integridade referencial.

📁 05_delete.sql

Remoções com filtros para evitar perdas acidentais.

Autor

Washington Araujo
Repositório oficial:
https://github.com/tombertioga/projeto-js-spa