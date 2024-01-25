require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))

 crypto_names = doc.xpath('//table/tbody')

crypto_names.search('tr').each do |row|
    puts row.text
    puts "\n"
 end
 #name = row.at_xpath('.//td[3]').text 3eme célulle
 #price = row.at_xpath('.//td[4]').text 4eme célulle
 

