require 'nokogiri'
require 'open-uri'
require 'pp'

doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))
crypto_hash = {}

 crypto_names = doc.xpath('//table/tbody')

 crypto_names.search('//table/tbody/tr').each do |row|
  
 name = row.at_xpath('.//td[3]').text #select 3ème 
 price = row.at_xpath('.//td[4]').text

 crypto_hash[name] = price
end

pp crypto_hash 

#pp : PrettyPrinter ( permet de mettre chauqe hash a la ligne)

# def price_name_crypto
#     doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/"))
#     crypto_hash = {}

#     crypto_names = doc.xpath('//table/tbody')

#     crypto_names.search('//table/tbody/tr').each do |row|
    
#         name = row.at_xpath('.//td[3]').text #select 3ème 
#         price = row.at_xpath('.//td[4]').text

#         crypto_hash[name] = price
#     end
#   return crypto_hash
# end
