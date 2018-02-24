class CreateDishes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :dishes do |t|
      t.string :title
      t.string :price
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
