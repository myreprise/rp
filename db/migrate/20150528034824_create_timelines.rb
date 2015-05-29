class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.date :timeperiod
      t.timestamps null: false
    end
  end
end
