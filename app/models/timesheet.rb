class Timesheet < ActiveRecord::Base
	belongs_to :incident
	
	has_many :command_officer, :dependent => :destroy
	has_many :fire_chief, :dependent => :destroy
	has_many :fire_fighters, :dependent => :destroy
	has_many :safety_officer, :dependent => :destroy
	has_many :emts, :dependent => :destroy
	has_many :hazmat_specialists, :dependent => :destroy
	has_many :command_vehicles, :dependent => :destroy
	has_many :engines, :dependent => :destroy
	has_many :emergency_supports, :dependent => :destroy
	has_many :hazmat_units, :dependent => :destroy
	has_many :field_units, :dependent => :destroy
	has_many :pumpers, :dependent => :destroy
	has_many :tankers, :dependent => :destroy
	has_many :rescue_units, :dependent => :destroy
	has_many :ladder_truck75s, :dependent => :destroy
	has_many :ladder_truck150s, :dependent => :destroy
	
	def total_amount
    a = (fire_fighters.to_a << command_officer << fire_chief)
	c = a.compact.inject(0) {|s, m| s + m.totalamount.to_f}
	d = sprintf("%.2f", c)
	"Grand Total: $#{d}"
	end
	
end