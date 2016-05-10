class Place < ActiveRecord::Base
  has_many :pictures
  has_many :open_times
  has_many :bookings
  has_many :reviews
  belongs_to :user, foreign_key: :owner_id
end
