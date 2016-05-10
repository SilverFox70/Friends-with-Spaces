class CreateOpenTimes < ActiveRecord::Migration
  def change
    create_table :open_times do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
