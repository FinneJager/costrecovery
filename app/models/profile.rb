class Profile < ActiveRecord::Base
	belongs_to :user
	
	validates :name, :department, :street, :city, :zipcode, :phone, :presence => true
    
	
end
