# 💬 Livechat

Uma aplicação de chat em tempo real desenvolvida para explorar o poder do **Action Cable**, **WebSockets** e **Turbo Streams** nativos do **Ruby on Rails 7**. O foco deste projeto é demonstrar como implementar uma comunicação bidirecional e instantânea de forma simples, elegante e sem a necessidade de frameworks Javascript complexos.

---

## 🚀 Tecnologias e Recursos Utilizados

* **Backend:** Ruby 3.x / Rails 7.x
* **Real-time:** Action Cable (WebSockets) & Turbo Streams
* **Autenticação:** Devise (Gerenciamento completo de usuários)
* **JS Bundler:** Importmap (Gerenciamento de dependências JS sem Node.js/Yarn)
* **Banco de Dados:** SQLite (Desenvolvimento) / Prontidão para PostgreSQL
* **Testes:** Minitest (Suíte nativa do Rails para Models, Controllers e Channels)
* **Containerização:** Docker (Dockerfile incluso para deploy facilitado)

---

## 🏗️ Arquitetura e Modelagem de Dados

O projeto conta com uma estrutura relacional sólida para gerenciar múltiplos chats entre diferentes usuários:
* **User:** Gerenciado via Devise, permitindo login, cadastro e sessões seguras.
* **Chat:** Salas de bate-papo que conectam múltiplos usuários através de uma tabela associativa (`chats_users`).
* **Message:** Mensagens vinculadas tanto ao `User` que a enviou quanto ao `Chat` onde foi postada, atualizadas em tempo real nas views via broadcasting.

---

## ✨ Funcionalidades Principais

* **Autenticação Completa:** Cadastro e login seguro de usuários.
* **Salas de Chat Multi-usuário:** Suporte a múltiplos canais de conversa dinâmicos.
* **Comunicação Instantânea (No-refresh):** Envio e recebimento de mensagens instantâneas através de canais persistentes de WebSocket.
* **Transmissão via Turbo Streams:** Atualização reativa da interface direto do backend para todos os usuários conectados na sala de chat.
* **Ambiente Dockerizado:** Pronto para ser rodado em containers com o `Dockerfile` configurado.

---

## 🛠️ Como Executar o Projeto Localmente

### Pré-requisitos
Certifique-se de ter instalado:
* **Ruby** 3.2.4
* **Rails 7+**
* **Docker** (opcional, caso prefira rodar via container)

### Passo a Passo (Local)

1. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/raphaelcampean/livechat.git](https://github.com/raphaelcampean/livechat.git)
   cd livechat
