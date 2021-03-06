class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.integer :requestor_id
      t.integer :receiver_id
      t.string :status
      t.string :requestor_name
      t.string :receiver_name

      t.timestamps
    end
  end
end
