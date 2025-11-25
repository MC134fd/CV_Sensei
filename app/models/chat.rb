class Chat < ApplicationRecord
  belongs_to :cv

  has_many :messages, dependent: :destroy
end
