class Scraper
 def get_page
   Nokogiri::HTML(open("https://www.businessinsider.com/top-us-hospitals-ranked-for-medical-care-by-us-news-2019-6#20-brigham-and-womens-hospital-1"))
 end
 def get_hosp
   self.get_page.css(".slide-wrapper")
  end
  # index_page.css(""").each do |hospital|
     #hospital
     #hospital.name = hospital.css("image-caption").text
   
     #hospital = Hospital.new 
      #hospital_name = hospital.css("image-caption") .text
      # hosp.name = hosp.css('.slide-title-text')
    # hospital_link = "#{hospital.attr('href')}"
    # hospital_bio = hospital.css(".class")
    
      
   



end  