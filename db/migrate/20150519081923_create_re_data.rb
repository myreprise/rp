class CreateReData < ActiveRecord::Migration
  def change
    create_table :re_data do |t|
      t.references :city
      t.date :timeperiod
      t.integer :new_constructed_residential
      t.integer :secondary_residential
      t.integer :re_investment_residential
      t.integer :re_investment_commercial
      t.integer :floor_space_started_residential
      t.integer :floor_space_started_commercial
      t.integer :floor_space_under_construction_residential
      t.integer :floor_space_under_construction_commercial
      t.integer :floor_space_completed_residential
      t.integer :floor_space_completed_commercial
      t.integer :floor_space_sold_residential
      t.integer :floor_space_sold_commercial
      t.integer :building_sold_residential
      t.integer :building_sold_commercial
      t.timestamps null: false
    end
  end
end
