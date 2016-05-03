class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.text :body
      t.integer :rating
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
