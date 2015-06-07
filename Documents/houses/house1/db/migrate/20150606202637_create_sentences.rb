class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end
