class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :place, index: true, foreign_key: true
      t.belongs_to :guest, class_name: "UserProfile"

      t.timestamps null: false
    end
  end
end
