require 'csv'

namespace :import_incidents_csv do

	task :create_incidents => :environment do
		puts "Import Incidents"
		
		csv_text = File.read('c:/rails/thumb/costrecovery/lib/csv_import/incidents.csv')
		csv = CSV.parse(csv_text, :headers => true)
		
		@incident_id_array = []
		@report_nr_array = []
		csv.each do |row|
			row = row.to_hash.with_indifferent_access
			Incident.create!(row.to_hash.symbolize_keys)
			@incident_id_array << Incident.last.id
			@report_nr_array << Incident.last.report_nr
		end
		
#------This combines the incidents array and the report_nr array into a hash
		
		@report_incident_hash = {}
		@report_nr_array.each_with_index do |value, index|
			@report_incident_hash[value] = @incident_id_array[index]
		end
		#puts @report_incident_hash
#----------------------------------------------------------------------------
		
   end
end