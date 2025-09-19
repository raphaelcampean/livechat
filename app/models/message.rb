class Message < ApplicationRecord
  after_create_commit do
    broadcast_append_to "messages",
      target: "messages",
      partial: "chats/message",
      locals: { message: self }
  end

  after_destroy_commit do
    broadcast_remove_to "messages",
      target: "messages",
      partial: "chats/message",
      locals: { message: self }
  end

  belongs_to :user
  belongs_to :chat
  validates :body, presence: true
  validates :user, presence: true
  validates :chat, presence: true
end
