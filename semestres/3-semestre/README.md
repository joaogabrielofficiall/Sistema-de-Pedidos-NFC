### 3. Conteúdo para `semestres/3-semestre/README.md`

```markdown
# 3º Semestre — Engenharia de Software e Gerenciamento de Pedidos

Este módulo documenta o estágio de unificação do sistema: a construção da aplicação web modular de vendas integrada à modelagem formal de dados e à Engenharia de Requisitos.

## 📊 Visão Geral
O projeto evoluiu para uma arquitetura centralizada e integrada de gerenciamento de pedidos em tempo real. O foco deste período foi aplicar os padrões de Engenharia de Software descritos por Roger Pressman para erradicar falhas de comunicação e retrabalhos entre a linha de frente do atendimento e a cozinha da hamburgueria.

## 🎯 Objetivos do Semestre
* Mapear e documentar o comportamento do sistema por meio de diagramas UML.
* Estruturar a persistência relacional com integridade referencial via chaves estrangeiras (`FK`).
* Implementar o ciclo completo do pedido: abertura, processamento em cozinha e atualização de status em tempo real.

## 🚀 Melhorias e Evolução do Projeto
* **Eliminação de Retrabalho:** A automação erradicou perdas de comandas e erros de digitação comuns no papel.
* **Geração de Inteligência Comercial:** A estruturação correta do banco de dados permitiu à gerência extrair relatórios estratégicos sobre produtos com maior saída e horários de pico operacional.

## 📋 Regras de Negócio Implementadas
* **Fluxo de Status Reativo:** Os pedidos progridem linearmente entre os estados: `Em preparo` ➔ `Pronto` ➔ `Entregue`.
* **Acesso Baseado em Atores:** O sistema segmenta as telas de acordo com a função: o atendente lança o item, a cozinha visualiza a fila de produção e o caixa efetua a baixa financeira.

## 📐 Engenharia e Arquitetura de Dados
O mapeamento das entidades foi normalizado para garantir a pipeline correta das operações:

* **`Produtos`:** Armazena os atributos fixos do cardápio (`id`, `nome`, `preço`, `categoria`).
* **`Pedidos`:** Controla o cabeçalho da venda (`id`, `data`, `status`).
* **`Itens_Pedido`:** Tabela associativa que resolve o relacionamento N:N entre produtos e pedidos, contendo chaves estrangeiras (`FK`) e o campo quantitativo.

### Modelagem Comportamental (UML)
O Diagrama de Caso de Uso descreve as fronteiras do sistema e o nível de interação de cada perfil operacional:

![Diagrama de Caso de Uso UML](../../semestres/3-semestre/assets/diagrama-casos-uso.png)

## ⚙️ Tecnologias Utilizadas
* **Engine Core:** Python.
* **Persistência Relacional:** MySQL.
* **Camada de Interface:** HTML5, CSS3 e JavaScript.
* **Modelagem:** Ferramentas CASE para engenharia de software (UML).

## 🧠 Aprendizados Técnicos e Limitações
A implementação em ambiente simulado expôs gargalos de sincronia de estado na interface da cozinha, que exigia recarregamentos manuais para atualizar a fila de produção. A resolução desse problema consolidou o entendimento sobre a necessidade de arquiteturas orientadas a eventos e manipulação dinâmica do DOM via JavaScript assíncrono para garantir a responsividade do fluxo operacional.

## 👥 Equipe e Orientação
* Integrantes: Eduardo dos Santos, Karina de Oliveira, Fábio de Sousa Silva, João Gabriel da Silva, Octavio Mendes Lopes, Gabriel Aluisio Diniz.

* Orientação: Prof. Me. Getulio da Silva Santos.

## 📂 Estrutura de Diretórios
```text
3-semestre/
├── docs/
│   └── CONTEEX FAM 2026 3º.docx          # Artigo científico de arquitetura
└── assets/
    ├── Banner 10º Congresso - 3º CONTEEX.pdf # Banner com fluxo estratégico
    └── diagrama-casos-uso.png            # Arquivo fonte do diagrama UML
