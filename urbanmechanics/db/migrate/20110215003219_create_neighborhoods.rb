class CreateNeighborhoods < ActiveRecord::Migration
  def self.up
    create_table :neighborhoods do |t|
      t.string :neighborhood

      t.timestamps
    end
  end

  def self.down
    drop_table :neighborhoods
  end
end
