class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.text :location
      t.belongs_to :owner, class_name: "User", index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
