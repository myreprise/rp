class ModernizeTheDimensionalArray < ActiveRecord::Migration
  def change
        remove_column :cities, :estate_id
  end
end
