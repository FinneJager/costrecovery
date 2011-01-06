class CreateTimesheets < ActiveRecord::Migration
  def self.up
    create_table :timesheets do |t|
      t.string :name
      t.datetime :date
	  t.integer :incident_id

      t.timestamps
    end
  end

  def self.down
    drop_table :timesheets
  end
end
