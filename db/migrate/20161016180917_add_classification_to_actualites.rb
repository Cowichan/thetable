class AddClassificationToActualites < ActiveRecord::Migration
  def change
    add_column :actualites, :classification, :string
  end
end
