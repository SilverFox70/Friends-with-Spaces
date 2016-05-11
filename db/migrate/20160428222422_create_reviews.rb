class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :guest, class_name: "UserProfile"
      t.belongs_to :place, index: true, foreign_key: true
      t.text :body
      t.integer :rating

      t.timestamps null: false
    end
  end
end
