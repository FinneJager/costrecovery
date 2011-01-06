class CreateIncidents < ActiveRecord::Migration
  def self.up
    create_table :incidents do |t|
      t.datetime :incident_datetime
      t.string :location
	  t.string :report_nr
	  t.string :responsible_party
	  t.string :area_resident
	  t.string :street
	  t.string :city
	  t.string :state
	  t.string :home_phone
	  t.string :cell_phone
	  t.string :insurance_carrier_name
	  t.string :insurance_carrier_street
	  t.string :insurance_carrier_city
	  t.string :insurance_carrier_state
	  t.string :insurance_carrier_phone
	  t.string :insurance_carrier_contact
	  t.string :policy_nr
	  t.string :vin_nr
	  t.string :license_nr
	  t.string :vehicle_make
	  t.string :vehicle_model
	  t.string :vehicle_year
	  

      t.timestamps
    end
  end

  def self.down
    drop_table :incidents
  end
end
