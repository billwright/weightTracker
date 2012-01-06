class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :weight_entry_id
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
