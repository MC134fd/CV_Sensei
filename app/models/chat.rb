class Chat < ApplicationRecord
  belongs_to :cvs

  # I can send a new message on the chat page #11
  # => A chat has many messages
  has_many :messages
end
