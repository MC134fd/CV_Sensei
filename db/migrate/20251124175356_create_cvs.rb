class CreateCvs < ActiveRecord::Migration[7.1]
  def change
    create_table :cvs do |t|
      t.references :users, null: false, foreign_key: true
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
