class Cv < ApplicationRecord
  belongs_to :users

  # I can see the "new chat" form submission on the CV page, including an option to add a desired role / job description #8
  # => A cv has many chats
  has_many :chats
end
