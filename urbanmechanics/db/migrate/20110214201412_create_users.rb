class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :name
      t.text :profile
      t.boolean :official
      t.string :neighborhood

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
