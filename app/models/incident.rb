class Incident < ActiveRecord::Base
	belongs_to :user
	has_one :timesheet, :dependent => :destroy
	
	def truncated_time
		incident_datetime.strftime("%m/%d/%y")
	end
end
