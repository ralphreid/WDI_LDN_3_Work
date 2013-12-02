require 'nokogiri'
require 'open-uri'

require 'pry'



def main
 url = "http://www.anscombes.co.uk/properties/highgate-property/conversion-4-bedroom-flat-apartment-for-sale/1364288/shepherds-hill-highgate-n6?area=n4+2lx&longitude=&latitude=&radius=5&saleType=Sale"
 page = Nokogiri::HTML(open(url))
 puts page.css(".title-product .price").inner_text.strip
end


main



