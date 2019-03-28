class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows through: :characters 
  
  def full_name 
    full_name = []
    full name << self.first_name
    full name << self.last_name 
    full_name.join(" ")
  end 
  
  def list_roles 
    self.characters
  end 
end