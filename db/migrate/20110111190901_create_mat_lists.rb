class CreateMatLists < ActiveRecord::Migration
  def self.up
    create_table :mat_lists do |t|
      t.integer :timesheet_id
      t.boolean :knd
      t.string :knd_am
      t.boolean :gran
      t.string :gran_am
      t.boolean :hds
      t.string :hds_am
      t.boolean :dwb24
      t.string :dwb24_am
      t.boolean :dwb36
      t.string :dwb36_am
      t.boolean :dwb48
      t.string :dwb48_am
      t.boolean :shborange
      t.string :shborange_am
      t.boolean :shbwhite
      t.string :shbwhite_am
      t.boolean :qdb12
      t.string :qdb12_am
      t.boolean :qdb25
      t.string :qdb25_am
      t.boolean :qdb100
      t.string :qdb100_am
      t.boolean :mb20
      t.string :mb20_am
      t.boolean :mb5
      t.string :mb5_am
      t.boolean :mb10
      t.string :mb10_am
      t.boolean :pillow
      t.string :pillow_am
      t.boolean :evac
      t.string :evac_am
      t.boolean :abboom
      t.string :abboom_am
      t.boolean :abpad
      t.string :abpad_am
      t.boolean :putty
      t.string :putty_am
      t.text :additional

      t.timestamps
    end
  end

  def self.down
    drop_table :mat_lists
  end
end
