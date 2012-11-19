require 'csv'

namespace :import_ladder_truck75_csv do

	task :create_ladder_truck75 => :environment do
		puts "Import Ladder Truck 75 ft"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/ladder_truck75.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			LadderTruck75.create!(row.to_hash.symbolize_keys)
			ladder_truck75 = LadderTruck75.last
			if @report_timesheet_hash.key?(ladder_truck75.report_nr)
				ladder_truck75.timesheet_id = "#{@report_timesheet_hash[ladder_truck75.report_nr]}"
			end
			
			#ladder_truck75.timesheet_id = @timesheet_id_array[index]
			ladder_truck75.save
		end
    end
end