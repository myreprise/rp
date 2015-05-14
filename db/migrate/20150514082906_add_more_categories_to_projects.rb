class AddMoreCategoriesToProjects < ActiveRecord::Migration
  def change

  	  	add_column :projects, :developer_id, :integer, :null => true, :default => ""
  	  	add_column :projects, :turnover, :float, :null => true, :default => ""
  	  	add_column :projects, :address, :integer, :null => true, :default => ""
  	  	add_column :projects, :city_id, :integer, :null => true, :default => ""
  	  	add_column :projects, :existing, :boolean, :null => true, :default => ""
  	  	add_column :projects, :parking, :integer, :null => true, :default => ""
  	  	add_column :projects, :tenants, :text, :null => true, :default => ""

  end
end