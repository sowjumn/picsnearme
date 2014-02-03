class HomeController < ApplicationController
	def index
		response = %x(curl "https://api.instagram.com/v1/media/search?lat=37&lng=122&client_id=#{ENV[client_id]}")
		resp = JSON.parse(response)
		@image = resp["data"][1]["images"]["standard_resolution"]["url"]
	end
end