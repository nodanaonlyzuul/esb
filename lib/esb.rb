require 'nokogiri'
require 'open-uri'

class Esb
  def self.get_color
    doc = Nokogiri::HTML(open("www.esbnyc.com/current_events_tower_lights.asp"))
    require 'pry';binding.pry;
  end
end
