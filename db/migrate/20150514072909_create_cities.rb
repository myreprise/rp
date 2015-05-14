class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :tier
      t.float :area
      t.string :rank
      t.timestamps null: false
    end
  end
end
