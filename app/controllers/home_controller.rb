require 'json'
include ActionView::Helpers::OutputSafetyHelper
class HomeController < ApplicationController
  def index
   # pale = Instagram.tag_recent_media("palestinianfood")
   # isra = Instagram.tag_recent_media("israelifood")

   # i_photos = []
   # isra.each do |media|
   #   i_photos << media["images"]["standard_resolution"]["url"]
   # end

   # p_photos = []
   # pale.each do |media|
   # 	 p_photos << media["images"]["standard_resolution"]["url"]
   # end

   # hash = {"Israel" => i_photos, "Palestine" => p_photos}

   # @stuff = hash.to_json

   file = File.read(Rails.root + 'public/locations_images.JSON')
   data_hash = JSON.parse(file)
   @israel_photos = data_hash["Israel"]
   @palestine_photos = data_hash["Palestine"]
  end
end
