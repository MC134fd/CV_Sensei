class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # I can open a form to create a new CV #6
  # => A user has many cvs
  has_many :cvs
  # => A user has many chats through the chat's cv
  has_many :chats, through: :cvs
end
