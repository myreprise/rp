class Project < ActiveRecord::Base

	belongs_to :city
	belongs_to :developer

	validates_presence_of :lattitude, :longitude

end
