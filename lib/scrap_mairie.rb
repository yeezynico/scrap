require 'nokogiri'
require 'open-uri'

def site
 doc = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
 name = doc.xpath('//p/a/@href')
 return name
end

# def get_townhall_email(url)
#  doc = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/ableiges.html"))

#  mail = doc.xpath('//table/tbody')
 
#  puts mail
# end

def perform
    site
end

puts perform
