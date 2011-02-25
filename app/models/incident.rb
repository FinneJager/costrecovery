class Incident < ActiveRecord::Base
	belongs_to :user
	has_one :timesheet, :dependent => :destroy
	has_one :mat_list, :dependent => :destroy
	
	validates :policy_nr, :presence => true
	
	def truncated_time
		incident_datetime.strftime("%m-%d-%Y")
	end
end
