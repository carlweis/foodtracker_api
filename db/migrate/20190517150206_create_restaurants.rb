class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false, default: ""
      t.string :cuisine, null: false, default: ""
      t.text :description, null: false, default: ""
      t.text :hero_image_url, null: false, default: ""
      t.boolean :favorite, null: false, default: false

      t.timestamps
    end

    add_index :restaurants, :name, unique: true
  end
end
