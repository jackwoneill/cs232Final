class AddChangedByToTrails < ActiveRecord::Migration
  def change
    add_column :trails, :changed_by, :string
  end
end
