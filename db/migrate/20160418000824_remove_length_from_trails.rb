class RemoveLengthFromTrails < ActiveRecord::Migration
  def change
    remove_column :trails, :length, :string
  end
end
