class ChangeDistrictStatusInProjectsTable < ActiveRecord::Migration
  def change

  	  	remove_column :projects, :district
  	  	add_column :projects, :district_id, :integer, :null => true, :default => ""

  end
end
