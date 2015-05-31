module EventsHelper
  def format_gmap_address(address, city, state, zipcode)
  "#{address.gsub(" ", "+")}+#{city.gsub(" ", "+")}+#{state}+#{zipcode}"
  end
end
