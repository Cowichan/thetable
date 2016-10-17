class CreateActualites < ActiveRecord::Migration
  def change
    create_table :actualites do |t|
      t.string :name
      t.string :string
      t.string :tagline
      t.string :string

      t.timestamps null: false
    end
  end
end
