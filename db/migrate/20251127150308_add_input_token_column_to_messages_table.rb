class AddInputTokenColumnToMessagesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :input_tokens, :integer, default: 0
  end
end
