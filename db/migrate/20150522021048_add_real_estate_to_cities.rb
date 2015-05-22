class AddRealEstateToCities < ActiveRecord::Migration
  def change

  	  	add_column :cities, :estate_id, :integer

  end
end
