class Message < ApplicationRecord
  belongs_to :chat

  validates :content, length: { minimum: 10, maximum: 1000 }, if: -> { role == "user" }

  validate :user_message_limit, if: -> { role == "user" }

  MAX_USER_CHAT_TOKENS = 100

  private

  def user_message_limit
    if chat.messages.any?
      @msg_to_check = chat.messages.where(role: "user").last
      if @msg_to_check.input_tokens >= MAX_USER_CHAT_TOKENS
        errors.add(:content, "Sorry, you've reached the chat limit for this conversation.")
      end
    end
  end
end
