class Timesheet < ActiveRecord::Base
	belongs_to :incident
	
	has_one :materials
	
	has_one :command_officer
	has_one :fire_chief
	has_many :fire_fighters
	has_one :safety_officer
	has_many :emts
	has_many :hazmat_specialists
	has_many :command_vehicles
	has_many :engines
	has_many :emergency_supports
	has_many :hazmat_units
	has_many :field_units
	has_many :pumpers
	has_many :tankers
	has_many :rescue_units
end
