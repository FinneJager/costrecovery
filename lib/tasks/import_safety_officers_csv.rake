require 'csv'

namespace :import_safety_officers_csv do

	task :create_safety_officers => :environment do
		puts "Import Safety Officers"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/safety_officers.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			SafetyOfficer.create!(row.to_hash.symbolize_keys)
			safety_officer = SafetyOfficer.last
			if @report_timesheet_hash.key?(safety_officer.report_nr)
				safety_officer.timesheet_id = "#{@report_timesheet_hash[safety_officer.report_nr]}"
			end
			
			#safety_officer.timesheet_id = @timesheet_id_array[index]
			safety_officer.save
		end
		
		

		
    end
end