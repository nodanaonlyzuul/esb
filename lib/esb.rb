require 'nokogiri'
require 'open-uri'

class Esb
  def self.get_color
    doc = Nokogiri::HTML(open("http://www.esbnyc.com/current_events_tower_lights.asp"))
    puts " "
    puts doc.css("#lighting_schedule table tr.current").text.gsub("\t", "")
    puts " "
  end
end
