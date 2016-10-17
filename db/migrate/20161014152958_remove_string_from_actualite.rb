class RemoveStringFromActualite < ActiveRecord::Migration
  def change
    remove_column :actualites, :string, :string
  end
end
