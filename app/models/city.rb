class City < ActiveRecord::Base

	has_many :projects
	has_many :developers

end