class CreateLocators < ActiveRecord::Migration[6.0]
  def change
    create_table :locators do |t|
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
