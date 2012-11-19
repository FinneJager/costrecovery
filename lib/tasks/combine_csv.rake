require 'csv'

namespace :combine_csv do

	task :combine => :environment do
		Rake::Task["import_incidents_csv:create_incidents"].invoke
		Rake::Task["import_mat_lists_csv:create_mat_lists"].invoke
		Rake::Task["import_timesheets_csv:create_timesheets"].invoke
		Rake::Task["import_command_officers_csv:create_command_officers"].invoke
		
		
		Rake::Task["import_safety_officers_csv:create_safety_officers"].invoke
		Rake::Task["import_fire_fighters_csv:create_fire_fighters"].invoke
		Rake::Task["import_fire_chiefs_csv:create_fire_chiefs"].invoke
		Rake::Task["import_emts_csv:create_emts"].invoke
		Rake::Task["import_command_vehicles_csv:create_command_vehicles"].invoke
		Rake::Task["import_emergency_supports_csv:create_emergency_supports"].invoke
		Rake::Task["import_engines_csv:create_engines"].invoke
		Rake::Task["import_field_units_csv:create_field_units"].invoke
		Rake::Task["import_hazmat_specialists_csv:create_hazmat_specialists"].invoke
		Rake::Task["import_hazmat_units_csv:create_hazmat_units"].invoke
		Rake::Task["import_pumpers_csv:create_pumpers"].invoke
		Rake::Task["import_rescue_units_csv:create_rescue_units"].invoke
		Rake::Task["import_tankers_csv:create_tankers"].invoke
		Rake::Task["import_ladder_truck75_csv:create_ladder_truck75"].invoke
		Rake::Task["import_ladder_truck150_csv:create_ladder_truck150"].invoke
		
	end
end