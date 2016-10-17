class AddCalendrierToActualites < ActiveRecord::Migration
  def change
    add_column :actualites, :calendrier, :datetime
  end
end
