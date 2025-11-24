# CRUD Oracle SQL - Projeto Exemplo

Este teste contém um exemplo completo de CRUD(Create, Read, Update, Delete) utilizando Oracle SQL, incluindo a criação de tabela, sequência para o id, trigger para a Sequência e operações básicas de manipulação de dados.

---

## Estrutura do Projeto

- `create_table.sql` → Criação da tabela `Descarga`.
- `create_sequence.sql` → Criação da sequência `sq_descarga`.
- `create_trigger.sql` → Criação da trigger `tgr_id_descarga`.
- `insert_data.sql` → Inserção de registros de exemplo.
- `select_data.sql` → Consultas (SELECT) na tabela.
- `update_data.sql` → Atualização de registros.
- `delete_data.sql` → Exclusão de registros.
- `.gitignore` → Arquivos ignorados pelo Git.

---

## Tabela Principal: Descarga

A tabela `Descarga' contém os seguintes campos:

| Coluna      | Tipo        | Descrição                   |
|------------|------------|-----------------------------|
| id         | NUMBER     | Chave primária, gerada pela trigger |
| dt_venda   | DATE       | Data da venda               |
| cd_cliente | NUMBER(5)  | Código do cliente           |
| ds_cliente | VARCHAR2(70)| Nome do cliente            |
| cd_produto | NUMBER(6)  | Código do produto           |
| ds_produto | VARCHAR2(70)| Nome do produto            |
| email      | VARCHAR2(100)| Email do cliente          |

---

