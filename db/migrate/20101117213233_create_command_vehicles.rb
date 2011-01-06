class CreateCommandVehicles < ActiveRecord::Migration
  def self.up
    create_table :command_vehicles do |t|
      t.string :name
      t.integer :first_hour
      t.integer :additional_hours
      t.integer :total_hours
      t.integer :hazmat_hours
      t.integer :rate1
      t.integer :rate2
	  t.integer :timesheet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :command_vehicles
  end
end
