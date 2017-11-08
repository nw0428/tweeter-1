class CreateUserUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users_users, id: false do |t|
      t.integer :follower_id, index: true
      t.integer :followee_id, index: true
    end

    add_foreign_key :users_users, :users, column: :follower_id
    add_foreign_key :users_users, :users, column: :followee_id
  end
end
