class Review < ActiveRecord::Base
  belongs_to :guest, class_name: 'UserProfile'
  belongs_to :place
end
