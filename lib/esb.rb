require 'nokogiri'
require 'open-uri'

class Esb
  def self.get_color
    doc = Nokogiri::HTML(open("http://www.esbnyc.com/current_events_tower_lights.asp"))
    puts " "
    puts doc.css("#page-title").text.strip
    puts " "
  end
end
