class Message < ApplicationRecord
  belongs_to :chat
  has_one_attached :file
  validates :content, presence: true

  validates :content, length: { minimum: 10, maximum: 1000 }, if: -> { role == "user" }

  # validate :user_message_limit, if: -> { role == "user" }

  MAX_USER_CHAT_TOK_COUNT = 100000
  # we cannot use the word token, otherwise ruby filters that variable by default, and it will show as nil

  private

  def user_message_limit
    if chat.messages.any?
      if chat.input_count >= MAX_USER_CHAT_TOK_COUNT
        errors.add(:content, "can not be shared as you've reached the conversation limit.")
      end
    end
  end
end
