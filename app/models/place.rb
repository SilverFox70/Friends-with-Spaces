class Place < ActiveRecord::Base
  has_many :pictures, dependent: :destroy
  has_many :open_times, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user, foreign_key: :owner_id

  after_create :build_default_resources

  private

  def build_default_resources
  	self.open_times.create
  	self.pictures.create(img_url: "http://placehold.it/600x400")
  end
end
