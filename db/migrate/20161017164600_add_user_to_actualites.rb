class AddUserToActualites < ActiveRecord::Migration
  def change
    add_reference :actualites, :user, index: true, foreign_key: true
  end
end
