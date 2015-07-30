class HomeController < ApplicationController
  def index
  	remmallah = Instagram.location_search(31.898043, 35.204271)

  	@ramallah_photos = []
    count_photos = 0
    i = 0
    while count_photos < 5
    	location = remmallah[i]
  		Instagram.location_recent_media(location.id).each do |media|
  			if media["type"] == "image" and count_photos < 5
  				@ramallah_photos << media["images"]["standard_resolution"]["url"]
          count_photos+=1
  			end
  		end
      i+=1
    end

  	tel_aviv = Instagram.location_search(32.085300, 34.781768)
  	@tel_aviv_photos = []
    count_photos = 0
    i = 0
    while count_photos < 5
      location = tel_aviv[i]
  		Instagram.location_recent_media(location.id).each do |media|
  			if media["type"] == "image" and count_photos < 5
  				@tel_aviv_photos << media["images"]["standard_resolution"]["url"]
          count_photos += 1
  			end
  		end
      i+=1
  	end
  end
end
