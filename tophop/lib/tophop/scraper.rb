class Scraper

 def self.pull_page
   coin =[]
  index_page = Nokogiri::HTML(open("https://www.businessinsider.com/top-us-hospitals-ranked-for-medical-care-by-us-news-2019-6"))
  
 index_page.css(".slide") .each do |hospital|
   hosp = Hospital.new
  # hosp.name_rank = hospital.css(".slide-title-text").text
  binding.pry
end
 end
 
  # index_page.css(""").each do |hospital|
     #hospital
     #hospital.name = hospital.css("image-caption").text
   
     #hospital = Hospital.new 
      #hospital_name = hospital.css("image-caption") .text
      # hosp.name = hosp.css('.slide-title-text')
    # hospital_link = "#{hospital.attr('href')}"
    # hospital_bio = hospital.css(".class")
    
       #index_page.css(".slide-title-text").text
   #index_page.css(".slide-title-text").text.strip



  
  
end 

