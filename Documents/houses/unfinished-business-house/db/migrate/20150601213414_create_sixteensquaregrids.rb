class CreateSixteensquaregrids < ActiveRecord::Migration
  def change
    create_table :sixteensquaregrids do |t|
      t.text :text
      t.string :picture

      t.timestamps null: false
    end
  end
end
