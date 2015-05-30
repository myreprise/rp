class ResolveNomenclatureIssues < ActiveRecord::Migration
  def change

	  	drop_table :cfacts
	  	drop_table :city_info

	    create_table :categories do |t|
	      t.string :title
	      t.string :type
	      t.timestamps null: false
	    end

	    create_table :cfacts do |t|
		    t.integer :city_id
		    t.integer :cfacts_id
		    t.integer :timeline_id
		    t.float   :value
			t.timestamps null: false

	    end
	end
end
