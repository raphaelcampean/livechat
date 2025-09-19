class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_message, only: [:destroy]
  # before_action :set_chat, only: [:index, :create]
  # before_action :set_users, only: [:index, :create]

  def create
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to root_path, notice: "Message sent!" }
      end
    else
      @messages = Message.all
      redirect_to chat_path(@message.chat), alert: "Failed to send message."
    end
  end

  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: "Message deleted!" }
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :user_id, :chat_id)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end
