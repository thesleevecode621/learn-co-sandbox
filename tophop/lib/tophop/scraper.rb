class Scraper
 def self.get_page
   index_page = Nokogiri::HTML(open("https://www.businessinsider.com/top-us-hospitals-ranked-for-medical-care-by-us-news-2019-6#20-brigham-and-womens-hospital-1"))
   index_page.css(".slide-wrapper").css("div").text.strip
 end 
  
  
end 