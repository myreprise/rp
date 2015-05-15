class ChangeProjectsAddressColumn < ActiveRecord::Migration
  def change

  	  	remove_column :projects, :address
  	  	add_column :projects, :address, :string, :null => true, :default => ""

  end
end
