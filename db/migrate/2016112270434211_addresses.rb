#migration file for Addresses. add "drop_table :addresses" before
#"create_table" in order to reset the table.
class Addresses < ActiveRecord::Migration[5.0]
  def self.up
    create_table :addresses do |t|
      t.column :city, :string, :limit => 32, :null => false
      t.column :zip, :integer, :null => false
      t.column :state, :string, :limit => 32, :null => false
      t.column :street_address, :string, :limit =>32, :null => false
      t.column :person_id, :integer
      t.column :created_at, :timestamp
    end
  end
end
