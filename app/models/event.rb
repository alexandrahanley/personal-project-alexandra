class Event < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  validates :title, :description, :date, :start_time, :end_time, :end_time, :address, :city, :state, 
  :zipcode, :latitude, :longitude, :avatar, presence: true


  def full_address
    [address, city, state, zipcode].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode

end
