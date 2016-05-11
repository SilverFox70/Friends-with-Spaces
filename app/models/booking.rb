class Booking < ActiveRecord::Base
  belongs_to :place
  belongs_to :guest, class_name: 'UserProfile'
end
