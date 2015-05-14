class Developer < ActiveRecord::Base

	has_many :projects
	belongs_to :city

end
