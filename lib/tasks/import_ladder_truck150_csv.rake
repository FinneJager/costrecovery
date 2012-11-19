require 'csv'

namespace :import_ladder_truck150_csv do

	task :create_ladder_truck150 => :environment do
		puts "Import Ladder Truck 150 ft"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/ladder_truck150.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			LadderTruck150.create!(row.to_hash.symbolize_keys)
			ladder_truck150 = LadderTruck150.last
			if @report_timesheet_hash.key?(ladder_truck150.report_nr)
				ladder_truck150.timesheet_id = "#{@report_timesheet_hash[ladder_truck150.report_nr]}"
			end
			
			#ladder_truck150.timesheet_id = @timesheet_id_array[index]
			ladder_truck150.save
		end
    end
end