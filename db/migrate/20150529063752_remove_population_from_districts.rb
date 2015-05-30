class RemovePopulationFromDistricts < ActiveRecord::Migration
  def change

       remove_column :districts, :population

  end
end
