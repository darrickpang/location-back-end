class CreateLocateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :locate_users do |t|
      t.integer :user_id
      t.integer :locator_id

      t.timestamps
    end
  end
end
