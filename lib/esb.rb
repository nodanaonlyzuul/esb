require 'nokogiri'
require 'http'

class Esb
  def self.get_color
    doc = Nokogiri::HTML(HTTP.get("https://www.esbnyc.com/about/tower-lights").to_s)
    date = doc.css('.is-today h2').text.strip
    colors_and_reason = doc.css('.is-today h3').text.strip
    additional_description = doc.css('.is-today .field_description').text.strip
    puts date.strip
    puts ""
    puts colors_and_reason.strip
    puts additional_description.strip unless additional_description.empty?
  end
end
