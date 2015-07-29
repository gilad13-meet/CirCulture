class HomeController < ApplicationController
  def index
  	ramallah = Instagram.location_search(31.898043, 35.204271).first(3)
  	jerusalem = Instagram.location_search(31.768319, 35.21371).first(3)

  	@ramallah_photos = []
  	remmallah.each do |location|
  	end

  end
end
