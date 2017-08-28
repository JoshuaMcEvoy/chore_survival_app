class CreateJoinTableChoreUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :chores, :users do |t|
      # t.index [:chore_id, :user_id]
      # t.index [:user_id, :chore_id]
    end
  end
end
