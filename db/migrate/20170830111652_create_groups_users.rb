class CreateGroupsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :groups_users, :id => false do |t|
      t.integer :genre_id
      t.integer :song_id
    end
  end
end
