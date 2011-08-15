class Incident < ActiveRecord::Base
	belongs_to :user
	has_one :timesheet, :dependent => :destroy
	has_one :mat_list, :dependent => :destroy
		
	validates :responsible_party, :street, :city, :state, :insurance_carrier_name, :insurance_carrier_street,
	:insurance_carrier_city, :insurance_carrier_state, :insurance_carrier_phone, :insurance_carrier_contact,
	:policy_nr, :resp_zip, :insur_zip, :presence => true
	
	def truncated_time
		incident_datetime.strftime("%m-%d-%Y")
	end
end
