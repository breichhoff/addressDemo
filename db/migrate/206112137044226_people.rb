#migration file for People. add:  "drop_table :people" before
#"create_table" to reset the table.
class People < ActiveRecord::Migration[5.0]
  def self.up
    create_table :people do |t|
      t.column :first_name, :string, :limit => 32, :null => false
      t.column :middle_name, :string, :limit => 32, :null => false
      t.column :last_name, :string, :limit => 32, :null => false
      t.column :created_at, :timestamp
    end
  end

end
