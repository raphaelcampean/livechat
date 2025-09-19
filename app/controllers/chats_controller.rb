class ChatsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:new, :edit, :create, :update]

  def show
    @message = Message.new
    @messages = @chat.messages.includes(:user).order(created_at: :asc)
  end

  def new
    @chat = Chat.new
  end

  def edit
  end

  def create
    @chat = Chat.new(chat_params)

    user_ids = params[:chat][:user_ids].to_s.split(",") + [current_user.id.to_s]
    @chat.user_ids = user_ids.uniq

    if @chat.save
      redirect_to @chat, notice: "Chat criado com sucesso."
    else
      render :new
    end
  end

  def destroy
    @chat.destroy
    redirect_to root_path, notice: "Chat excluído com sucesso."
  end

  def update
    if @chat.update(chat_params)
      redirect_to @chat, notice: "Chat atualizado com sucesso."
    else
      render :edit
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:title, user_ids: [])
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end

  def set_users
    @users = User.where.not(id: current_user.id)
  end
end
