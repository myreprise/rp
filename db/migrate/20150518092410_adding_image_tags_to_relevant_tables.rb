class AddingImageTagsToRelevantTables < ActiveRecord::Migration
  def change

  	  add_column :projects, :image_tag, :string, :null => true, :default => ""
  	  add_column :cities, :image_tag, :string, :null => true, :default => ""
  	  add_column :developers, :image_tag, :string, :null => true, :default => ""

  end
end
