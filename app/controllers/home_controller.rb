class HomeController < ApplicationController
  def index
    ip = IpRecord.new
    ip.ip = request.ip rescue ""
    gecoder =  Geocoder.search(ip.ip) rescue ""
    ip.main_address = gecoder.first.data rescue ""
    ip.save
  end
end
