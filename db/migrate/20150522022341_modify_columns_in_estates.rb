class ModifyColumnsInEstates < ActiveRecord::Migration
  def change
        
        remove_column :estates, :new_constructed_residential, :integer
        remove_column :estates, :secondary_residential, :integer
        remove_column :estates, :re_investment_residential, :integer
        remove_column :estates, :re_investment_commercial, :integer
        remove_column :estates, :floor_space_started_residential, :integer
        remove_column :estates, :floor_space_started_commercial, :integer
        remove_column :estates, :floor_space_under_construction_residential, :integer
        remove_column :estates, :floor_space_under_construction_commercial, :integer
        remove_column :estates, :floor_space_completed_residential, :integer
        remove_column :estates, :floor_space_completed_commercial, :integer
        remove_column :estates, :floor_space_sold_residential, :integer
        remove_column :estates, :floor_space_sold_commercial, :integer

        add_column :estates, :new_constructed_residential, :float
        add_column :estates, :secondary_residential, :float
        add_column :estates, :re_investment_residential, :float
        add_column :estates, :re_investment_commercial, :float
        add_column :estates, :floor_space_started_residential, :float
        add_column :estates, :floor_space_started_commercial, :float
        add_column :estates, :floor_space_under_construction_residential, :float
        add_column :estates, :floor_space_under_construction_commercial, :float
        add_column :estates, :floor_space_completed_residential, :float
        add_column :estates, :floor_space_completed_commercial, :float
        add_column :estates, :floor_space_sold_residential, :float
        add_column :estates, :floor_space_sold_commercial, :float

  end
end
