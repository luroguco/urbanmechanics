class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.text :description
      t.integer :rating
      t.string :created_by
      t.string :neighborhood

      t.timestamps
    end
  end

  def self.down
    drop_table :ideas
  end
end
