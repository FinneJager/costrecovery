class AddStrikeAndStrikeAmAndWtrPolymersAndWtrPolymersAmToMatLists < ActiveRecord::Migration
  def self.up
    add_column :mat_lists, :strike, :boolean
    add_column :mat_lists, :strike_am, :string
    add_column :mat_lists, :wtrPolymers, :boolean
    add_column :mat_lists, :wtrPolymers_am, :string
  end

  def self.down
    remove_column :mat_lists, :wtrPolymers_am
    remove_column :mat_lists, :wtrPolymers
    remove_column :mat_lists, :strike_am
    remove_column :mat_lists, :strike
  end
end
