class AddInputCountColumnToChatsTable < ActiveRecord::Migration[7.1]
  def change
    add_column :chats, :input_count, :bigint
  end
end
