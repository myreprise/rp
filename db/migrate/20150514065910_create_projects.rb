class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :developer
      t.string :district
      t.integer	:gfa
      t.float :longitude
      t.float :lattitude
      t.timestamps null: false
    end
  end
end
