class CreateTankers < ActiveRecord::Migration
  def self.up
    create_table :tankers do |t|
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
    drop_table :tankers
  end
end
