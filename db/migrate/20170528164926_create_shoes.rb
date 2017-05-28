class CreateShoes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
