require 'json'
class HomeController < ApplicationController
  def index
  	# remmallah = Instagram.location_search(31.898043, 35.204271)

  	# @ramallah_photos = []
   #  count_photos = 0
   #  i = 0
   #  while count_photos < 5
   #  	location = remmallah[i]
  	# 	Instagram.location_recent_media(location.id).each do |media|
  	# 		if media["type"] == "image" and count_photos < 5
  	# 			@ramallah_photos << media["images"]["standard_resolution"]["url"]
   #        count_photos+=1
  	# 		end
  	# 	end
   #    i+=1
   #  end

  	# tel_aviv = Instagram.location_search(32.085300, 34.781768)
  	# @tel_aviv_photos = []
   #  count_photos = 0
   #  i = 0
   #  while count_photos < 5
   #    location = tel_aviv[i]
  	# 	Instagram.location_recent_media(location.id).each do |media|
  	# 		if media["type"] == "image" and count_photos < 5
  	# 			@tel_aviv_photos << media["images"]["standard_resolution"]["url"]
   #        count_photos += 1
  	# 		end
  	# 	end
   #    i+=1
  	# end

   #  puts @photos = {"Tel Aviv" => @tel_aviv_photos, "Remmallah" => @ramallah_photos}.to_json


   file = File.read(Rails.root + 'public/locations_images.JSON')
   data_hash = JSON.parse(file)
   puts data_hash.keys
   @tel_aviv_photos = data_hash["Tel Aviv"]
   @ramallah_photos = data_hash["Remmallah"]
  end
end
