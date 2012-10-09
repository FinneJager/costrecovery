require 'csv'

namespace :import_field_units_csv do

	task :create_field_units => :environment do
		puts "Import Field Units"
	
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/field_units.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each_with_index do |row,index|
			row = row.to_hash.with_indifferent_access
			FieldUnit.create!(row.to_hash.symbolize_keys)
			field_unit = FieldUnit.last
			if @report_timesheet_hash.key?(field_unit.report_nr)
				field_unit.timesheet_id = "#{@report_timesheet_hash[field_unit.report_nr]}"
			end
			
			#field_unit.timesheet_id = @timesheet_id_array[index]
			field_unit.save
		end
    end
end