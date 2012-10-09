require 'csv'

namespace :import_rescue_units_csv do

	task :create_rescue_units => :environment do
		puts "Import Rescue Units"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/rescue_units.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			RescueUnit.create!(row.to_hash.symbolize_keys)
			rescue_unit = RescueUnit.last
			if @report_timesheet_hash.key?(rescue_unit.report_nr)
				rescue_unit.timesheet_id = "#{@report_timesheet_hash[rescue_unit.report_nr]}"
			end
			
			#rescue_unit.timesheet_id = @timesheet_id_array[index]
			rescue_unit.save
		end
    end
end