require 'csv'

namespace :import_tankers_csv do

	task :create_tankers => :environment do
		puts "Import Tankers"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/tankers.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			Tanker.create!(row.to_hash.symbolize_keys)
			one_tanker = Tanker.last
			if @report_timesheet_hash.key?(one_tanker.report_nr)
				one_tanker.timesheet_id = "#{@report_timesheet_hash[one_tanker.report_nr]}"
			end
			
			#one_tanker.timesheet_id = @timesheet_id_array[index]
			one_tanker.save
		end
    end
end