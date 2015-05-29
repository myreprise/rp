class RemoveUselessCategoriesFromProjects < ActiveRecord::Migration
  def change

       remove_column :cities, :population

        add_column :projects, :opening_year, :integer

  end
end
