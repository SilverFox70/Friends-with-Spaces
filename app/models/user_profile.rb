class UserProfile < ActiveRecord::Base
	belongs_to :user
	has_many :places, foreign_key: :owner_id, dependent: :destroy
	has_many :bookings, foreign_key: :guest_id, dependent: :destroy
	has_many :reviews, foreign_key: :guest_id, dependent: :destroy
end
