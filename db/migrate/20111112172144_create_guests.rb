class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :plus_one

      t.timestamps
    end
  end

  def self.down
    drop_table :guests
  end
end
