# 1º Semestre — Concepção e Viabilidade Técnica NFC

Este módulo documenta a fase inicial de pesquisa, levantamento de requisitos e validação de viabilidade técnica para a substituição de fluxos operacionais manuais por cartões inteligentes Contactless.

## 📊 Visão Geral
O projeto concentrou-se em diagnosticar os gargalos operacionais gerados pelo uso de comandas físicas em papel no estabelecimento piloto "Black Burguer", localizado em Santo André/SP. O foco central foi mapear a lentidão no encerramento de contas e desenhar um MVP baseado em tecnologia NFC para eliminar o tráfego de notas parciais e o risco de rasuras.

## 🎯 Objetivos do Semestre
* Identificar falhas de comunicação e atrasos causados por registros analógicos.
* Validar a viabilidade prática da tecnologia NFC para transações locais sem contato físico.
* Estruturar o fluxo macro de dados: lançamento, gravação no dispositivo e leitura para fechamento.

## 🛠️ Decisões de Arquitetura
A arquitetura inicial foi projetada para descentralizar o armazenamento de dados operacionais de curto prazo. Em vez de depender de servidores remotos nesta fase de testes, o registro do consumo foi concentrado diretamente nos blocos de memória graváveis da tag física (NTAG) sob posse do cliente, otimizando o tempo de resposta local.

## 📋 Regras de Negócio Implementadas
* **Vinculação de Comanda:** Cada cliente recebe um cartão NFC em branco na entrada, associado a um identificador exclusivo no sistema de testes.
* **Registro de Consumo:** Ao efetuar um pedido, os dados são gravados temporariamente no cartão através de um dispositivo validador.
* **Fechamento por Aproximação:** O encerramento da conta exige apenas a aproximação do cartão no terminal de saída para leitura do montante acumulado e liberação do pagamento.

## ⚙️ Tecnologias Utilizadas
* **NFC (Near Field Communication):** Protocolo de comunicação por indução magnética.
* **Hardware de Validação:** Smartphone Android com antena NFC integrada.
* **Software de Emulação:** Aplicativo leitor e scanner para gravação de blocos de dados em tags NTAG.

## 🧠 Aprendizados Técnicos e Limitações
Os testes piloto de campo revelaram instabilidade na taxa de atenuação do sinal e falhas pontuais de leitura e gravação das tags devido ao posicionamento incorreto do dispositivo. Esse comportamento demonstrou que a interface final exige validações assíncronas rígidas e feedbacks visuais e sonoros instantâneos para mitigar erros operacionais do usuário.

## 👥 Equipe e Orientação
* Integrantes: Eduardo dos Santos, Karina de Oliveira, Fábio de Sousa Silva, João Gabriel da Silva, Octavio Mendes Lopes, Gabriel Aluisio Diniz.

* Orientação: Profª. Me. Maira Mendias Lauro.

## 📂 Estrutura de Diretórios
```text
1-semestre/
├── docs/
│   └── CONTEEX FAM 2026 1º.docx          # Artigo científico de viabilidade
└── assets/
    └── Banner 10º Congresso - 1º CONTEEX.pdf # Banner técnico apresentado
