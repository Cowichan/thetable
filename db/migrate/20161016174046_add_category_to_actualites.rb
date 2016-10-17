class AddCategoryToActualites < ActiveRecord::Migration
  def change
    add_column :actualites, :category, :string
  end
end
