require 'open-uri'
require 'nokogiri'

url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"

page = Nokogiri::HTML(open(url))

#Display output to screen
page.css('div.h5.listing-name').each do |line|
  puts line.text
end

page.css('span.h3.price-amount').each do |line|
  puts line.text
end

page.css('div.text-muted.listing-location.text-truncate').each do |line|
  puts line.text
end