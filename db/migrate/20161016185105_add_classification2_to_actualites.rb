class AddClassification2ToActualites < ActiveRecord::Migration
  def change
    add_column :actualites, :classification2, :string
  end
end
