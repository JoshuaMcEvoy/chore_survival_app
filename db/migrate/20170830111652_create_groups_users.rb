class CreateGroupsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :groups, :users, :id => false do |t|
      # t.integer [:group_id, :user_id]
      # t.integer [:user_id, :group_id]
    end
  end
end
