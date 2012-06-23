class CreateRides < ActiveRecord::Migration
  def self.up
    create_table :rides do |t|
      t.string "Origin"
      t.string "Destination"
      t.timestamps
    end
  end
  def self.down
    drop_table :rides
end
end
