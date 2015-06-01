class CreateNinesquaregrids < ActiveRecord::Migration
  def change
    create_table :ninesquaregrids do |t|
      t.text :text
      t.string :picture

      t.timestamps null: false
    end
  end
end
