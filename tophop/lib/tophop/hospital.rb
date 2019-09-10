
class Hospital
  attr_accessor :name,:ranking,:description
  @@all = []
  
    def self.all
      @@all
    end 
    def save 
      @@all << self 
    end 
    def self.destroy_all
    all.clear
  end

end 