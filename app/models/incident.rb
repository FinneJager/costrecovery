class Incident < ActiveRecord::Base
	belongs_to :user
	has_one :timesheet, :dependent => :destroy
	has_one :mat_list, :dependent => :destroy
	
	def truncated_time
		incident_datetime.strftime("%m-%d-%Y")
	end
end
