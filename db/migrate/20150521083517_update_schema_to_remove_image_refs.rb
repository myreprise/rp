class UpdateSchemaToRemoveImageRefs < ActiveRecord::Migration
  def change

  	  	remove_column :cities, :image_tag
  	  	remove_column :developers, :image_tag
  	  	remove_column :projects, :image_tag

  end
end
