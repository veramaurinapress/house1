class CreateFoursquaregrids < ActiveRecord::Migration
  def change
    create_table :foursquaregrids do |t|
      t.text :text
      t.string :picture

      t.timestamps null: false
    end
  end
end
