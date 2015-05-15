class CreateReMetrics < ActiveRecord::Migration
  def change
    create_table :re_metrics do |t|

      t.integer :city_id
      t.date :month
      t.float :new_constructed_residential
      t.float :secondary_residential
      t.float :re_invest_residential
      t.float :re_invest_commercial
      t.float :floor_space_started_residential
      t.float :floor_space_started_commercial
      t.float :floor_space_construction_residential
      t.float :floor_space_construction_commercial
      t.float :floor_space_sold_residential
      t.float :floor_space_sold_commercial
      t.float :building_sold_residential
      t.float :buidling_sold_commercial
      
      t.timestamps null: false
    end
  end
end
