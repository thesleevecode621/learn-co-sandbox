 class Scraper

 def self.pull_page
   coin =[]
  index_page = Nokogiri::HTML(open("https://www.businessinsider.com/top-us-hospitals-ranked-for-medical-care-by-us-news-2019-6"))
  

   index_page.css(".slide") .map do |hospital|
     hosp = Hospital.new
     name_rank = hospital.css(".slide-title-text").text.split(".")
  hosp.description = hospital.css("div.slide-layout.clearfix>div>p").text
    hosp.ranking = name_rank[0]
    hosp.name =  name_rank[1]
    hosp.save
  
end
 end
 


  
  
end 

