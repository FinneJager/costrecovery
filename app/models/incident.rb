class Incident < ActiveRecord::Base
	belongs_to :user
	has_one :timesheet, :dependent => :destroy
	
	def truncated_time
		incident_datetime.strftime("%d/%m/%y")
	end
end
