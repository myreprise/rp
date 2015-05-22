class City < ActiveRecord::Base

	has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "500x500" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


	has_many :projects
	has_many :developers
	has_many :districts, :dependent => :destroy
	has_many :estates

	validates_presence_of :name
	validates :name, length: { minimum: 2 }
	
end
