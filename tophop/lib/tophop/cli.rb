class Cli
 attr_accessor :ranking
  def call 
    
  puts "find the right care for you "
  Scraper.pull_page
  list_hospitals
  #find_hospital(ranking)
  info
  goodbye
end 
def list_hospitals
  
@ranking = Hospital.all.each.with_index(1) do |hospital,i|
   puts "#{i}: #{ hospital.name}"
end  
end    
#def find_hospital(ranking)
 #  Hospital.all.detect{ |s| s.ranking == ranking
   #return "#{s.description}" }
  #end
def info 
    input = nil
    while input != "exit"
      puts "find out more about the Hospital:"
      input = gets.strip

      if input.to_i > 0
        the_ranking = @ranking[input.to_i-1]
        puts "#{the_ranking.name}  - #{the_ranking .description}"
      elsif input == "info"
        list_hospitals
      else
        puts "for more, type info or exit."
      end
    end
  end


def goodbye
  puts "hope you got the info you need"
  puts "goodbye"
end
end