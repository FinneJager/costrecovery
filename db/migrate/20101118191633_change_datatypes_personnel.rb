class ChangeDatatypesPersonnel < ActiveRecord::Migration
  def self.up
	change_table :command_officers do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :fire_chiefs do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :fire_fighters do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
	end
	
	  change_table :safety_officers do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
      change_table :emts do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end

	change_table :hazmat_specialists do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :command_vehicles do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :engines do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :emergency_supports do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :hazmat_units do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :field_units do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :pumpers do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
	
	change_table :tankers do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
    
	change_table :rescue_units do |t|
      t.change :first_hour, :float
	  t.change :additional_hours, :float
	  t.change :hazmat_hours, :float
	  t.change :rate1, :float
	  t.change :rate2, :float
    end
  end

  def self.down
  end
end
