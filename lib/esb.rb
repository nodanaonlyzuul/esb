require 'nokogiri'
require 'open-uri'

class Esb
  def self.get_color
    doc = Nokogiri::HTML(open("https://www.esbnyc.com/explore/tower-lights"))
    puts " "
    puts doc.css(".view-tower-lighting #page-title").text.strip
    puts " "
  end
end
