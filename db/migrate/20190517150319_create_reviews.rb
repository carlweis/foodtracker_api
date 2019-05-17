class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :restaurant, foreign_key: true
      t.text :description, null: false, default: ""
      t.integer :rating, null: false, default: 0
      t.boolean :recommended, nulL: false, default: false

      t.timestamps
    end
  end
end
