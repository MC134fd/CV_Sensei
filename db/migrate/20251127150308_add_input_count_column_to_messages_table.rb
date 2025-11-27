class AddInputCountColumnToMessagesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :messages, :input_count, :integer
  end
end
