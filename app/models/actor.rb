class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters 
  
  def full_name 
    name = []
    name << self.first_name
    name << self.last_name 
    name.join(" ")
  end 
  
  def list_roles 
    self.characters.map do |character| 
      roles = "#{character.name}  -  #{character.show.name}"
      roles.to_str
    end 
  end 
end