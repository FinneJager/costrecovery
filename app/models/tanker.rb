class Tanker < ActiveRecord::Base
	belongs_to :timesheet
	
	validates :name, :presence => true
	validates :first_hour, :additional_hours, :total_hours, :hazmat_hours, :numericality => true
	
	def totalamount
		a = first_hour * rate1
		b = additional_hours * rate2
		a + b
	end
	
	def rate1
		360
	end
	
	def rate2
		480
	end
end
