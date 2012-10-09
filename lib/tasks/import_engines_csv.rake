require 'csv'

namespace :import_engines_csv do

	task :create_engines => :environment do
		puts "Import Engines"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/engines.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			Engine.create!(row.to_hash.symbolize_keys)
			one_engine = Engine.last
			if @report_timesheet_hash.key?(one_engine.report_nr)
				one_engine.timesheet_id = "#{@report_timesheet_hash[one_engine.report_nr]}"
			end
			
			#one_engine.timesheet_id = @timesheet_id_array[index]
			one_engine.save
		end
    end
end