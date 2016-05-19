class AlbumImage < ActiveRecord::Base
	belongs_to :album
	mount_uploader :image, ImageUploader
	validates :tag_line,presence: {message: "This field is mandatory"},length: { maximum: 50, message: "Max Length 50", multiline: true}
end