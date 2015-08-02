require 'json'
include ActionView::Helpers::OutputSafetyHelper
class FoodController < ApplicationController
  def index

   # pale_foods = ["Sa7lab", "Knafeh", "Katayef", "Falafel", "Hummus", "Msa5an", "mnaqesh"]
   # p_photos = []
   # pale_foods.each do |food|
   # 	Instagram.tag_recent_media(food)[0..3].each do |pic|
   # 		p_photos << pic["images"]["standard_resolution"]["url"]
   # 	end
   # end


   
   # isra_foods = [""]

   # i_photos = []
   # isra.each do |media|
   #   i_photos << media["images"]["standard_resolution"]["url"]
   # end

   # hash = {"Israel" => i_photos, "Palestine" => p_photos}

   # @stuff = hash.to_json

   file = File.read(Rails.root + 'public/locations_images.JSON')
   data_hash = JSON.parse(file)
   @israel_photos = data_hash["Israel"]
   @palestine_photos = data_hash["Palestine"]


  end
end
