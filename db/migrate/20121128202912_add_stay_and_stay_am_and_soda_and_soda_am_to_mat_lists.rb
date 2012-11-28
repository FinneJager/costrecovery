class AddStayAndStayAmAndSodaAndSodaAmToMatLists < ActiveRecord::Migration
  def self.up
    add_column :mat_lists, :stay, :boolean
    add_column :mat_lists, :stay_am, :string
    add_column :mat_lists, :soda, :boolean
    add_column :mat_lists, :soda_am, :string
  end

  def self.down
    remove_column :mat_lists, :soda_am
    remove_column :mat_lists, :soda
    remove_column :mat_lists, :stay_am
    remove_column :mat_lists, :stay
  end
end
