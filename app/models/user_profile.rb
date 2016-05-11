class UserProfile < ActiveRecord::Base
	belongs_to :user
	has_many :places, foreign_key: :owner_id
	has_many :bookings, foreign_key: :guest_id
	has_many :reviews, foreign_key: :guest_id
end
