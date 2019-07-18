
class Hospital
  attr_accessor :name,:ranking,:doctor,:pnumber,:description
  @@all = []
  def initialize(name,ranking,description,pnumber)
    @name = name 
    @ranking = ranking
    @pnumber = pnumber
    @description = description
    save
  end 
   
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