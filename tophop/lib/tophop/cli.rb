class Cli
 attr_accessor :ranking
  def call 
    
  puts "find the right care for you "
  Scraper.pull_page
 # list_hospitals_2
  list_hospitals
  info
  goodbye
end
#def list_hospitals_2
#run = Hospital.all.sort_by.with_index(1){|hosp| hosp.name}
 #run.each.with_index(1) do |hospital,i|
#puts "|#{i}: #{ hospital.name}|"
#binding.pry
# end 
# end 
def list_hospitals
  
@ranking = Hospital.all.each.with_index(1) do |hospital,i|
   puts "|#{i}: #{ hospital.name}|"
  puts "<--------------------------------------->"
end
puts "find out more about the Hospital by seleting a number :"

end    

def info 
    input = nil
   
    while input != "exit"
  input = gets.strip
      if input.to_i > 0 && input.to_i < 21
        the_ranking = @ranking[input.to_i-1]
        puts "---------------------------------------"
        puts "#{the_ranking.name}  - #{the_ranking.description}"
        puts "---------------------------------------"
        puts "to return to list just simply type list 
        or if your done type exit "
      elsif input == "list"
        list_hospitals
        
      elsif input != "exit"
        puts "for the list , type list or if your done 
        just type exit or pick another number."
        
      
      end
    end
  end


def goodbye
  puts "hope you got the info you need"
  puts "goodbye"
end
end
