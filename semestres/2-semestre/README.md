### 2. Conteúdo para `semestres/2-semestre/README.md`

```markdown
# 2º Semestre — Automação de Inventário e Cadeia de Suprimentos

Este módulo documenta o desenvolvimento da plataforma de gerenciamento de insumos, transicionando o controle de estoque do restaurante do modelo analógico para um sistema Web relacional em tempo real.

## 📊 Visão Geral
Após validar o fluxo de atendimento por aproximação, identificou-se que o gerenciamento interno de insumos operava de forma inconsistente. A falta de previsibilidade gerava compras emergenciais e obsolescência de materiais perecíveis. O foco deste ciclo foi construir o motor de controle logístico e a persistência de dados das mercadorias.

## 🎯 Objetivos do Semestre
* Desenvolver um banco de dados relacional para controle de SKUs.
* Automatizar o cálculo de entradas e saídas de mercadorias para mitigar o desperdício de capital imobilizado.
* Fornecer uma interface administrativa para monitoramento instantâneo do inventário.

## 🚀 Melhorias e Evolução do Projeto
O avanço central foi a migração da contagem manual para a automação estruturada. A implementação prática dessa arquitetura web gerou uma **redução de 40% no tempo de análise de estoque** executada pelo gestor, otimizando o processo de 4 horas para 2,5 horas de auditoria.

## 📋 Regras de Negócio Implementadas
* **Atualização Reativa de Saldo:** Cada movimentação diária inserida gera o abatimento automático ou acréscimo nas tabelas de estoque.
* **Sinalização de Reposição:** O sistema expõe alertas visuais instantâneos quando o saldo físico de um item atinge níveis críticos, prevenindo rupturas.
* **Gestão de Perecíveis:** Lógica aplicada para priorização de fluxo de insumos com menor tempo de vida útil (conceito PEPS).

## ⚙️ Tecnologias Utilizadas
* **Back-end:** Python.
* **Banco de Dados:** MySQL.
* **Front-end:** HTML5, CSS3 e JavaScript Vanilla.

## 🧠 Aprendizados Técnicos e Limitações
A transição para o modelo cliente-servidor introduziu desafios de latência e concorrência na execução de queries de inventário no MySQL. Durante simulações de picos de movimentação, foram registradas falhas de conectividade e lentidão pontual, o que exigiu a otimização de índices no banco de dados e regras de validação no front-end para impedir o envio de requisições duplicadas.

## 👥 Equipe e Orientação
* Integrantes: Eduardo dos Santos, Karina de Oliveira, Fábio de Sousa Silva, João Gabriel da Silva, Octavio Mendes Lopes, Gabriel Aluisio Diniz.

* Orientação: Prof. Me. Getulio da Silva Santos.

## 📂 Estrutura de Diretórios
```text
2-semestre/
├── docs/
│   └── CONTEEX FAM 2026 2º.docx          # Artigo científico de estoque
└── assets/
    └── Banner 10º Congresso - 2º CONTEEX.pdf # Banner com telas do sistema
