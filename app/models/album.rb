class Album < ActiveRecord::Base
	has_many :album_images
	belongs_to :user
	validates :album_name,presence: {message: "This field is mandatory"},length: { maximum: 50, message: "Max Length 50", multiline: true}
	validates_length_of :album_images, within: 0..25 
	#accept_nested_attributes_for :album_images
end
