class RemoveOriginalProjectDeveloperColumn < ActiveRecord::Migration
  def change

  	remove_column :projects, :developer

  end
end
