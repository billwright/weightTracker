class CreateWeightEntries < ActiveRecord::Migration
  def change
    create_table :weight_entries do |t|
      t.float :weight
      t.date :on

      t.timestamps
    end
  end
end
