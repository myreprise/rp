class CreateCfacts < ActiveRecord::Migration
  def change
    create_table :cfacts do |t|
      t.string :fact_category
      t.string :fact_title
      t.timestamps null: false
    end
  end
end
