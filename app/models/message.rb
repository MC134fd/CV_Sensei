class Message < ApplicationRecord
  belongs_to :chat

  validates :content, length: { minimum: 10, maximum: 1000 }, if: -> { role == "user" }

  validate :user_message_limit, if: -> { role == "user" }

  MAX_USER_CHAT_TOK_COUNT = 100
  # we cannot use the word token, otherwise ruby filters that variable by default, and it will show as nil

  private

  def user_message_limit
    if chat.messages.any?
      if chat.messages.where(role: "user").last.input_count >= MAX_USER_CHAT_TOK_COUNT
        errors.add(:content, "Sorry, you've reached the chat limit for this conversation.")
      end
    end
  end
end
