class CityFactsJoin < ActiveRecord::Migration
  def change
  	create_table :city_info, :id => false do |t|
  		t.integer "city_id"
  		t.integer "cfacts_id"
  		t.integer "timeline_id"
  		t.float "value"
  	end
  end
end
