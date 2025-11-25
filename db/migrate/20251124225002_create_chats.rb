class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.references :cv, null: false, foreign_key: true
      t.string :job_title
      t.text :job_description

      t.timestamps
    end
  end
end
