class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :comments, :idea_id, :grid_id
  end
end
