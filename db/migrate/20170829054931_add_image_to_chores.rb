class AddImageToChores < ActiveRecord::Migration[5.1]
  def change
    add_column :chores, :image, :text
  end
end
