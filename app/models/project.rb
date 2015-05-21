class Project < ActiveRecord::Base

	has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "400x400" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	belongs_to :city
	belongs_to :developer
	belongs_to :district

	validates_presence_of :lattitude, :longitude

end
