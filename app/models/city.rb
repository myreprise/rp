class City < ActiveRecord::Base

	has_many :projects
	has_many :developers
	has_many :districts, :dependent => :destroy

	validates_presence_of :name

end
