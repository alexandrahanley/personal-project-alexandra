class Event < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  
  def full_address
    [address, city, state, zipcode].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode

end
