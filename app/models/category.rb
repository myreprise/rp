class Category < ActiveRecord::Base

	has_many :cities, :through => :cfacts
	has_many :cfacts

end