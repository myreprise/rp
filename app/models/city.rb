class City < ActiveRecord::Base

	has_many :projects
	has_many :developers
	has_many :districts, :dependent => :destroy
	has_many :re_data

	validates_presence_of :name
	validates :name, length: { minimum: 2 }
	
end
