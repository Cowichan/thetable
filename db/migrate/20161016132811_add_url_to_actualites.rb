class AddUrlToActualites < ActiveRecord::Migration
  def change
    add_column :actualites, :url, :string
  end
end
