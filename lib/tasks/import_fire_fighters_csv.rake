require 'csv'

namespace :import_fire_fighters_csv do

	task :create_fire_fighters => :environment do
		puts "Import Fire Fighters"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/fire_fighters.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			FireFighter.create!(row.to_hash.symbolize_keys)
			fire_fighter = FireFighter.last
			if @report_timesheet_hash.key?(fire_fighter.report_nr)
				fire_fighter.timesheet_id = "#{@report_timesheet_hash[fire_fighter.report_nr]}"
			end
			
			#fire_fighter.timesheet_id = @timesheet_id_array[index]
			fire_fighter.save
		end
    end
end