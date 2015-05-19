# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Datum.create(:id => 1, :city_id => 3, :timeperiod => nil, :new_constructed_residential => 119.1, :secondary_residential => 112.1, :re_investment_residential => 10.5, :re_investment_commercial => 12.3)