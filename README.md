# 💬 Livechat

Uma aplicação de chat em tempo real desenvolvida para explorar o poder do **Action Cable**, **WebSockets** e **Hotwire (Turbo Streams)** no **Ruby on Rails 7**. O projeto demonstra como construir uma experiência de comunicação instantânea, reativa e bidirecional de forma extremamente eficiente, sem a necessidade de frameworks SPA complexos no frontend.

---

## 🚀 Tecnologias e Conceitos Utilizados

* **Backend:** Ruby 3.x / Rails 7.x
* **Real-time:** Action Cable (WebSockets) & Turbo Streams
* **Frontend:** Hotwire (Turbo Frames & Stimulus JS)
* **Estilização:** Tailwind CSS (via Tailwind CSS Rails gem)
* **Banco de Dados:** PostgreSQL / SQLite
* **Gerenciamento de Fila/PubSub:** Redis (para produção/escalabilidade do Action Cable)

---

## ✨ Funcionalidades Principais

* **Salas de Chat em Tempo Real:** Criação e entrada em salas de conversa dinâmicas.
* **Mensagens Instantâneas (No-refresh):** Envio e recebimento de mensagens em tempo real via conexão WebSocket persistente.
* **Transmissão Bidirecional (Broadcasting):** Uso de `turbo_stream_from` para atualizar a tela de todos os usuários conectados na sala simultaneamente assim que uma mensagem é salva no banco.
* **Scroll Automático Inteligente:** Controlador Stimulus dedicado para garantir que a janela de chat role para o fim automaticamente ao receber novas mensagens.
* **Design Limpo e Responsivo:** Interface moderna inspirada nos principais apps de mensagens do mercado utilizando Tailwind CSS.

---

## 🛠️ Como Executar o Projeto Localmente

### Pré-requisitos
* **Ruby** (versão recomendada no arquivo `.ruby-version`)
* **Rails 7+**
* **Redis** (opcional para desenvolvimento, obrigatório se o Action Cable estiver configurado no modo `redis` em `config/cable.yml`)

### Passo a Passo

1. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/raphaelcampean/livechat.git](https://github.com/raphaelcampean/livechat.git)
   cd livechat