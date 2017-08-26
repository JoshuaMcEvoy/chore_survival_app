class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores do |t|
      t.string :name
      t.text :description
      t.integer :reward

      t.timestamps
    end
  end
end
