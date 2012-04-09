class CreateAssignment2s < ActiveRecord::Migration
  def self.up
    create_table :assignment2s do |t|
      t.string :name
      t.text :description
      t.string :serial
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :assignment2s
  end
end
