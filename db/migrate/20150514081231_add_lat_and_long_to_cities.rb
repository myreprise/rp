class AddLatAndLongToCities < ActiveRecord::Migration
  def change

  	  	add_column :cities, :longitude, :float, :null => true, :default => ""
  	  	add_column :cities, :lattitude, :float, :null => true, :default => ""

  end
end
