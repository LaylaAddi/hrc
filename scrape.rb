require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open('https://app.truckstop.com/PostingDetails/Loads/1278199004'))


page.css("#column_h > div:nth-child(2) > div:nth-child(1) > div > div > div > div > div.title.ng-binding")
ng-scope ng-isolate-scope
#column_h > div:nth-child(2) > div:nth-child(1) > div > div > div > div > div.title.ng-binding