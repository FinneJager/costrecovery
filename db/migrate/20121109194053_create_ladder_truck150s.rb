class CreateLadderTruck150s < ActiveRecord::Migration
  def self.up
    create_table :ladder_truck150s do |t|
      t.string :names
      t.integer :first_hour
      t.integer :additional_hours
      t.integer :total_hours
      t.integer :hazmat_hours
      t.integer :rate1
      t.integer :rate2
      t.integer :timesheet_id
      t.string :report_nr

      t.timestamps
    end
  end

  def self.down
    drop_table :ladder_truck150s
  end
end
