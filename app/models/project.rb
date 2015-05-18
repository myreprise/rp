class Project < ActiveRecord::Base

	belongs_to :city
	belongs_to :developer
	belongs_to :district

	validates_presence_of :lattitude, :longitude

end
